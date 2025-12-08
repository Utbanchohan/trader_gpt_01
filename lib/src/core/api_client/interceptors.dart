part of 'client.dart';

class AuthorizationInterceptor extends Interceptor {
  AuthorizationInterceptor(this.ref);

  final Ref ref;

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.type == DioExceptionType.connectionError ||
        err.type == DioExceptionType.unknown && err.error is SocketException) {
      $showMessage("No Internet Connection", isError: true);
    }
    handler.reject(err);
  }
}

/// Token refresh manager to handle 401 errors and prevent multiple refresh calls
/// Uses separate instances for different API endpoints
class TokenRefreshManager {
  // Separate managers for different market endpoints
  static final TokenRefreshManager marketData = TokenRefreshManager._internal();
  static final TokenRefreshManager marketDataNew =
      TokenRefreshManager._internal();

  TokenRefreshManager._internal();

  bool _isRefreshing = false;
  final List<_QueuedRequest> _pendingRequests = [];

  bool get isRefreshing => _isRefreshing;

  Future<Response<dynamic>?> handleRefresh({
    required Dio dio,
    required DioException error,
    required Ref ref,
    required Future<bool> Function() refreshTokenCallback,
    required String Function() getNewToken,
  }) async {
    debugPrint('🔄 Token refresh requested for: ${error.requestOptions.path}');

    if (_isRefreshing) {
      debugPrint('⏳ Token refresh already in progress, queuing request...');
      // Queue this request and wait for refresh to complete
      final completer = Completer<Response<dynamic>?>();
      _pendingRequests.add(
        _QueuedRequest(
          options: error.requestOptions,
          completer: completer,
          dio: dio,
          getNewToken: getNewToken,
        ),
      );
      return completer.future;
    }

    _isRefreshing = true;
    try {
      debugPrint('🔐 Starting token refresh...');
      final success = await refreshTokenCallback();

      if (success) {
        // Small delay to ensure SharedPreferences has propagated
        await Future.delayed(const Duration(milliseconds: 100));

        final newToken = getNewToken();
        debugPrint(
          '✅ Token refresh successful, new token: ${newToken.substring(0, math.min(20, newToken.length))}...',
        );

        // Retry the original request with new token
        final response = await _retryRequest(
          dio,
          error.requestOptions,
          newToken,
        );

        // Process all queued requests
        _processQueuedRequests();

        return response;
      } else {
        debugPrint('❌ Token refresh failed - callback returned false');
        // Clear user session on refresh failure
        _clearSessionAndLogout(ref);
        _failQueuedRequests(error);
        return null;
      }
    } catch (e, stackTrace) {
      debugPrint('❌ Token refresh exception: $e');
      debugPrint('Stack trace: $stackTrace');
      _clearSessionAndLogout(ref);
      _failQueuedRequests(error);
      return null;
    } finally {
      _isRefreshing = false;
    }
  }

  Future<Response<dynamic>> _retryRequest(
    Dio dio,
    RequestOptions requestOptions,
    String newToken,
  ) async {
    debugPrint(
      '🔁 Retrying request: ${requestOptions.method} ${requestOptions.path}',
    );

    // Update the authorization header with new token
    final headers = Map<String, dynamic>.from(requestOptions.headers);
    headers[HttpHeaders.authorizationHeader] = 'Bearer $newToken';

    final options = Options(method: requestOptions.method, headers: headers);

    try {
      final response = await dio.request(
        requestOptions.path,
        data: requestOptions.data,
        queryParameters: requestOptions.queryParameters,
        options: options,
      );
      debugPrint('✅ Retry successful: ${response.statusCode}');
      return response;
    } catch (e) {
      debugPrint('❌ Retry failed: $e');
      rethrow;
    }
  }

  void _processQueuedRequests() {
    for (final request in _pendingRequests) {
      final newToken = request.getNewToken();
      _retryRequest(request.dio, request.options, newToken)
          .then((response) {
            request.completer.complete(response);
          })
          .catchError((error) {
            request.completer.completeError(error);
          });
    }
    _pendingRequests.clear();
  }

  void _failQueuedRequests(DioException originalError) {
    for (final request in _pendingRequests) {
      request.completer.completeError(originalError);
    }
    _pendingRequests.clear();
  }

  void _clearSessionAndLogout(Ref ref) {
    String password = ref.read(localDataProvider).getPassword1 ?? "";
    String email = ref.read(localDataProvider).getEmail ?? "";
    String rememberMe = ref.read(localDataProvider).getRemamberMe ?? "";
    ref.read(localDataProvider).clearAllData();
    ref.read(localDataProvider).setEmail(email);
    ref.read(localDataProvider).setPassword(password);
    ref.read(localDataProvider).setRememberMe(rememberMe);
    ref.read(stocksManagerProvider.notifier).unWatchAllStock();
  }
}

class _QueuedRequest {
  final RequestOptions options;
  final Completer<Response<dynamic>?> completer;
  final Dio dio;
  final String Function() getNewToken;

  _QueuedRequest({
    required this.options,
    required this.completer,
    required this.dio,
    required this.getNewToken,
  });
}

/// Interceptor for market data client with token refresh handling
class MarketDataInterceptor extends Interceptor {
  final Ref ref;
  final Dio dio;

  MarketDataInterceptor(this.ref, this.dio);

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.type == DioExceptionType.connectionError ||
        (err.type == DioExceptionType.unknown &&
            err.error is SocketException)) {
      $showMessage("No Internet Connection", isError: true);
      handler.reject(err);
      return;
    }

    if (err.response?.statusCode == 401) {
      try {
        final response = await TokenRefreshManager.marketData.handleRefresh(
          dio: dio,
          error: err,
          ref: ref,
          refreshTokenCallback: () => _refreshMarketToken(),
          getNewToken: () =>
              ref.read(localDataProvider).marketAccessToken ?? '',
        );
        if (response != null) {
          handler.resolve(response);
          return;
        }
      } catch (e) {
        debugPrint('Token refresh failed: $e');
      }
    }

    handler.reject(err);
  }

  Future<bool> _refreshMarketToken() async {
    try {
      debugPrint('🔐 Attempting to refresh market token...');

      // Create a new Dio instance for refresh to avoid interceptor loop
      final refreshDio = Dio(
        BaseOptions(
          headers: {
            "Content-Type": "application/json",
            "Accept": "application/json",
          },
          baseUrl: BaseUrl.marketDataUrl,
          connectTimeout: const Duration(seconds: 30),
          receiveTimeout: const Duration(seconds: 30),
        ),
      );

      final response = await refreshDio.post(
        'api/user/login',
        data: {
          "username": "traderverse_profile",
          "password": r"aX2Txl2yxt1ic0xs-@wXcw-ds0at$sa-ofZwelad",
        },
      );

      debugPrint('🔐 Refresh response status: ${response.statusCode}');

      if (response.statusCode == 200 && response.data != null) {
        final accessToken = response.data['accessToken'];
        final refreshToken = response.data['refreshToken'];

        if (accessToken != null && accessToken.toString().isNotEmpty) {
          // Save tokens and wait for completion
          final saveSuccess = await ref
              .read(localDataProvider)
              .setAccessTokenMarket(accessToken);
          debugPrint('🔐 Access token save result: $saveSuccess');

          if (refreshToken != null) {
            await ref
                .read(localDataProvider)
                .setRefreshTokenMarket(refreshToken);
          }

          // Verify token was saved correctly
          final savedToken = ref.read(localDataProvider).marketAccessToken;
          if (savedToken == accessToken) {
            debugPrint('✅ Market token refreshed and verified successfully');
            return true;
          } else {
            debugPrint(
              '❌ Token verification failed - saved token does not match',
            );
            return false;
          }
        }
      }
      debugPrint('❌ Token refresh failed - invalid response structure');
      return false;
    } catch (e, stackTrace) {
      debugPrint('❌ Market token refresh error: $e');
      debugPrint('Stack trace: $stackTrace');
      return false;
    }
  }
}

/// Interceptor for new market data client with token refresh handling
class MarketDataNewInterceptor extends Interceptor {
  final Ref ref;
  final Dio dio;

  MarketDataNewInterceptor(this.ref, this.dio);

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.type == DioExceptionType.connectionError ||
        (err.type == DioExceptionType.unknown &&
            err.error is SocketException)) {
      $showMessage("No Internet Connection", isError: true);
      handler.reject(err);
      return;
    }

    if (err.response?.statusCode == 401) {
      try {
        final response = await TokenRefreshManager.marketDataNew.handleRefresh(
          dio: dio,
          error: err,
          ref: ref,
          refreshTokenCallback: () => _refreshMarketTokenNew(),
          getNewToken: () =>
              ref.read(localDataProvider).marketAccessTokenNew ?? '',
        );
        if (response != null) {
          handler.resolve(response);
          return;
        }
      } catch (e) {
        debugPrint('Token refresh failed: $e');
      }
    }

    handler.reject(err);
  }

  Future<bool> _refreshMarketTokenNew() async {
    try {
      debugPrint('🔐 Attempting to refresh market token new...');

      // Create a new Dio instance for refresh to avoid interceptor loop
      final refreshDio = Dio(
        BaseOptions(
          headers: {
            "Content-Type": "application/json",
            "Accept": "application/json",
          },
          baseUrl: BaseUrl.marketData,
          connectTimeout: const Duration(seconds: 30),
          receiveTimeout: const Duration(seconds: 30),
        ),
      );

      final response = await refreshDio.post(
        'api/user/login',
        data: {
          "email": "traderverse_profile",
          "password": r"aX2Txl2yxt1ic0xs-@wXcw-ds0at$sa-ofZwelad",
        },
      );

      debugPrint('🔐 Refresh response status: ${response.statusCode}');

      if (response.statusCode == 200 && response.data != null) {
        final data = response.data['data'];
        if (data != null) {
          final accessToken = data['accessToken'];
          final refreshToken = data['refreshToken'];

          if (accessToken != null && accessToken.toString().isNotEmpty) {
            // Save tokens and wait for completion
            final saveSuccess = await ref
                .read(localDataProvider)
                .setAccessTokenMarketNew(accessToken);
            debugPrint('🔐 Access token save result: $saveSuccess');

            if (refreshToken != null) {
              await ref
                  .read(localDataProvider)
                  .setRefreshTokenMarketNew(refreshToken);
            }

            // Verify token was saved correctly
            final savedToken = ref.read(localDataProvider).marketAccessTokenNew;
            if (savedToken == accessToken) {
              debugPrint(
                '✅ Market token new refreshed and verified successfully',
              );
              return true;
            } else {
              debugPrint(
                '❌ Token verification failed - saved token does not match',
              );
              return false;
            }
          }
        }
      }
      debugPrint('❌ Token refresh failed - invalid response structure');
      return false;
    } catch (e, stackTrace) {
      debugPrint('❌ Market token new refresh error: $e');
      debugPrint('Stack trace: $stackTrace');
      return false;
    }
  }
}

/// Interceptor for main app API with token refresh handling
class MainAppInterceptor extends Interceptor {
  final Ref ref;
  final Dio dio;

  MainAppInterceptor(this.ref, this.dio);

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.type == DioExceptionType.connectionError ||
        (err.type == DioExceptionType.unknown &&
            err.error is SocketException)) {
      $showMessage("No Internet Connection", isError: true);
      handler.reject(err);
      return;
    }

    if (err.response?.statusCode == 401) {
      // For main app, we clear session on 401 (user needs to re-login)
      String password = ref.read(localDataProvider).getPassword1 ?? "";
      String email = ref.read(localDataProvider).getEmail ?? "";
      String rememberMe = ref.read(localDataProvider).getRemamberMe ?? "";
      ref.read(localDataProvider).clearAllData();
      ref.read(localDataProvider).setEmail(email);
      ref.read(localDataProvider).setPassword(password);
      ref.read(localDataProvider).setRememberMe(rememberMe);
      ref.read(stocksManagerProvider.notifier).unWatchAllStock();
    }

    handler.reject(err);
  }
}

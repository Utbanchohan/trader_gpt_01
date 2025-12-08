part of 'client.dart';

class AuthorizationInterceptor extends Interceptor {
  AuthorizationInterceptor(this.ref);

  final Ref ref;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // final token = ref.read(accessTokenProvider);

    // if (token != null) {

    //   options.headers[HttpHeaders.authorizationHeader] = 'Bearer $token';
    // }

    super.onRequest(options, handler);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final response = err.response;
    if (err.type == DioExceptionType.connectionError ||
        err.type == DioExceptionType.unknown && err.error is SocketException) {
      $showMessage("No Internet Connection", isError: true);
    } else if (response?.statusCode == 401) {
      String password = ref.read(localDataProvider).getPassword1 ?? "";
      String email = ref.read(localDataProvider).getEmail ?? "";
      String remamberMe = ref.read(localDataProvider).getRemamberMe ?? "";
      ref.read(localDataProvider).clearAllData();
      ref.read(localDataProvider).setEmail(email);
      ref.read(localDataProvider).setPassword(password);
      ref.read(localDataProvider).setRememberMe(remamberMe);
      ref.read(stocksManagerProvider.notifier).unWatchAllStock();
      await ref.read(authProvider.notifier).onSignOut();
    }

    handler.reject(err);
  }
}

class AuthorizationInterceptorMarket extends Interceptor {
  AuthorizationInterceptorMarket(this.ref);

  final Ref ref;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // final token = ref.read(accessTokenProvider);

    // if (token != null) {

    //   options.headers[HttpHeaders.authorizationHeader] = 'Bearer $token';
    // }

    super.onRequest(options, handler);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final response = err.response;
    if (err.type == DioExceptionType.connectionError ||
        err.type == DioExceptionType.unknown && err.error is SocketException) {
      $showMessage("No Internet Connection", isError: true);
    } else if (response?.statusCode == 401) {
      final newToken = ref.read(localDataProvider).marketRefreshToken;
      if (newToken != null) {
        ref.read(localDataProvider).setAccessTokenMarket(newToken);
      }

      handler.reject(err);
    }
  }
}

class AuthorizationInterceptorMarketNew extends Interceptor {
  AuthorizationInterceptorMarketNew(this.ref);

  final Ref ref;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // final token = ref.read(accessTokenProvider);

    // if (token != null) {

    //   options.headers[HttpHeaders.authorizationHeader] = 'Bearer $token';
    // }

    super.onRequest(options, handler);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final response = err.response;
    if (err.type == DioExceptionType.connectionError ||
        err.type == DioExceptionType.unknown && err.error is SocketException) {
      $showMessage("No Internet Connection", isError: true);
    } else if (response?.statusCode == 401) {
      final newToken = ref.read(localDataProvider).marketRefreshTokenNew;
      if (newToken != null) {
        ref.read(localDataProvider).setAccessTokenMarket(newToken);
      }

      handler.reject(err);
    }
  }
}

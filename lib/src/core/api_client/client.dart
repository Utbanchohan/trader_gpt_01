import 'dart:async';
import 'dart:io';
import 'dart:math' as math;

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart' show debugPrint, Uint8List, kDebugMode;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trader_gpt/src/feature/aurh_provider/auth_provider.dart';
import 'package:trader_gpt/src/shared/flavours.dart';
<<<<<<< HEAD
import '../../../flavors.dart';
=======

>>>>>>> master
import '../../shared/custom_message.dart';
import '../../shared/socket/providers/stocks_price.dart';
import '../local/repository/local_storage_repository.dart';

part 'interceptors.dart';
part 'pretty_logger.dart';

/// A Dio Client Provider.
final client = Provider.family<Dio, String>((ref, baseUrl) {
  const timeOut = Duration(seconds: 120000);
  final dio = Dio(
    BaseOptions(
      headers: {
        "Content-Type": "application/json",
        "Accept": "application/json",
      },
      baseUrl: baseUrl,
      connectTimeout: timeOut,
      receiveTimeout: timeOut,
    ),
  );

  dio.interceptors.addAll([
    MainAppInterceptor(ref, dio),
    if (kDebugMode)
      PrettyDioLogger(
        requestBody: kDebugMode,
        requestHeader: kDebugMode,
        responseBody: kDebugMode,
      ),
  ]);
  dio.httpClientAdapter = CustomClientAdapter(ref);

  return dio;
});

final marketDataClient = Provider.family<Dio, String>((ref, baseUrl) {
  const timeOut = Duration(seconds: 120000);
  final dio = Dio(
    BaseOptions(
      headers: {
        "Content-Type": "application/json",
        "Accept": "application/json",
      },
      baseUrl: baseUrl,
      connectTimeout: timeOut,
      receiveTimeout: timeOut,
    ),
  );

  dio.interceptors.addAll([
    MarketDataInterceptor(ref, dio),
    if (kDebugMode)
      PrettyDioLogger(
        requestBody: kDebugMode,
        requestHeader: kDebugMode,
        responseBody: kDebugMode,
      ),
  ]);
  dio.httpClientAdapter = MarketCustomClientAdapter(ref);

  return dio;
});

final marketDataClientNew = Provider.family<Dio, String>((ref, baseUrl) {
  const timeOut = Duration(seconds: 120000);
  final dio = Dio(
    BaseOptions(
      headers: {
        "Content-Type": "application/json",
        "Accept": "application/json",
      },
      baseUrl: baseUrl,
      connectTimeout: timeOut,
      receiveTimeout: timeOut,
    ),
  );
  dio.interceptors.addAll([
    MarketDataNewInterceptor(ref, dio),
    if (kDebugMode)
      PrettyDioLogger(
        requestBody: kDebugMode,
        requestHeader: kDebugMode,
        responseBody: kDebugMode,
      ),
  ]);
  dio.httpClientAdapter = MarketCustomClientAdapterNew(ref);

  return dio;
});

final priceStreamClientNew = Provider.family<Dio, String>((ref, baseUrl) {
  const timeOut = Duration(seconds: 120000);
  return Dio(
      BaseOptions(
        headers: {
          "Content-Type": "application/json",
          "Accept": "application/json",
        },
        baseUrl: baseUrl,
        connectTimeout: timeOut,
        receiveTimeout: timeOut,
      ),
    )
    ..interceptors.addAll([
      AuthorizationInterceptor(ref),
      if (kDebugMode)
        PrettyDioLogger(
          requestBody: kDebugMode,
          requestHeader: kDebugMode,
          responseBody: kDebugMode,
        ),
    ])
    ..httpClientAdapter = PriceStreamCustomClientAdapter(ref);
});

final multipartClient = Provider<Dio>((ref) {
  const timeOut = Duration(seconds: 120000);
  return Dio(
      BaseOptions(
        headers: {
          "Content-Type": "multipart/form-data",
          "Accept": "application/json",
        },
        baseUrl: F.baseUrl,
        // requestEncoder: (request, options) {

        // },
        connectTimeout: timeOut,
        receiveTimeout: timeOut,
      ),
    )
    ..interceptors.addAll([
      AuthorizationInterceptor(ref),
      if (kDebugMode)
        PrettyDioLogger(
          requestBody: kDebugMode,
          requestHeader: kDebugMode,
          responseBody: kDebugMode,
        ),
    ])
    ..httpClientAdapter = CustomClientAdapter(ref);
});

/// A custom client adapter made to put the Authorization Header with each request if the user is logged in.
/// We made a custom client adapter because we are using Firebase for Auth and It's token expires within an hour.
/// We are not storing the token in local storage because firebase manages all on it's own.
/// We are also not using interceptor because they don't have async onRequest Method
class CustomClientAdapter extends IOHttpClientAdapter {
  final Ref ref;
  final bool isStripe;

  CustomClientAdapter(this.ref, {this.isStripe = false});

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    // Only set token if Authorization header is not already present (e.g., from retry logic)
    final existingAuth = options.headers[HttpHeaders.authorizationHeader];
    if (existingAuth == null || existingAuth.toString().isEmpty) {
      final token = ref.read(localDataProvider).accessToken;
      if (token != null && token.isNotEmpty) {
        options.headers[HttpHeaders.authorizationHeader] = 'Bearer $token';
        debugPrint(
          'MAIN CLIENT ACCESS TOKEN: ${token.substring(0, math.min(20, token.length))}...',
        );
      }
    } else {
      debugPrint('MAIN CLIENT: Using existing Authorization header');
    }
    return super.fetch(options, requestStream, cancelFuture);
  }
}

class MarketCustomClientAdapter extends IOHttpClientAdapter {
  final Ref ref;
  final bool isStripe;

  MarketCustomClientAdapter(this.ref, {this.isStripe = false});

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    // Only set token if Authorization header is not already present (e.g., from retry logic)
    final existingAuth = options.headers[HttpHeaders.authorizationHeader];
    if (existingAuth == null || existingAuth.toString().isEmpty) {
      final token = ref.read(localDataProvider).marketAccessToken;
      if (token != null && token.isNotEmpty) {
        options.headers[HttpHeaders.authorizationHeader] = 'Bearer $token';
        debugPrint(
          'MARKET CLIENT ACCESS TOKEN: ${token.substring(0, math.min(20, token.length))}...',
        );
      }
    } else {
      debugPrint('MARKET CLIENT: Using existing Authorization header');
    }

    return super.fetch(options, requestStream, cancelFuture);
  }
}

class PriceStreamCustomClientAdapter extends IOHttpClientAdapter {
  final Ref ref;
  final bool isStripe;

  PriceStreamCustomClientAdapter(this.ref, {this.isStripe = false});

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    final token = ref.read(localDataProvider).accessToken;
    if (token != null) {
      options.headers.addAll({
        HttpHeaders.acceptHeader: 'application/json, text/plain, */*',
        'referer': 'https://stage.tradersgpt.io/',
        'sec-ch-ua':
            '"Chromium";v="140", "Not=A?Brand";v="24", "Google Chrome";v="140"',
        'sec-ch-ua-mobile': '?0',
        'sec-ch-ua-platform': '"Windows"',
        HttpHeaders.userAgentHeader:
            'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36',
        'x-api-key': 'TradersGpt_api_456', //
      });

      // ✅ Optionally attach Bearer token if available
      if (token.isNotEmpty) {
        options.headers[HttpHeaders.authorizationHeader] = 'Bearer $token';
        debugPrint('CUSTOM CLIENT ACCESS TOKEN $token');
      }
    }
    return super.fetch(options, requestStream, cancelFuture);
  }
}

class MarketCustomClientAdapterNew extends IOHttpClientAdapter {
  final Ref ref;
  final bool isStripe;

  MarketCustomClientAdapterNew(this.ref, {this.isStripe = false});

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    // Only set token if Authorization header is not already present (e.g., from retry logic)
    final existingAuth = options.headers[HttpHeaders.authorizationHeader];
    if (existingAuth == null || existingAuth.toString().isEmpty) {
      final token = ref.read(localDataProvider).marketAccessTokenNew;
      if (token != null && token.isNotEmpty) {
        options.headers[HttpHeaders.authorizationHeader] = 'Bearer $token';
        debugPrint(
          'MARKET NEW CLIENT ACCESS TOKEN: ${token.substring(0, math.min(20, token.length))}...',
        );
      }
    } else {
      debugPrint('MARKET NEW CLIENT: Using existing Authorization header');
    }

    return super.fetch(options, requestStream, cancelFuture);
  }
}

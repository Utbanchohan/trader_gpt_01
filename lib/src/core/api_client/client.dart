import 'dart:io';
import 'dart:math' as math;
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart' show kDebugMode, debugPrint, Uint8List;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../flavors.dart';
import '../local/repository/local_storage_repository.dart';
part 'interceptors.dart';
part 'pretty_logger.dart';

/// A Dio Client Provider.
/// This Provider gives us a Dio instance to make network calls
final client = Provider.family<Dio, String>((ref, baseUrl) {
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
    ..httpClientAdapter = CustomClientAdapter(ref);
});

final marketDataClient = Provider.family<Dio, String>((ref, baseUrl) {
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
    ..httpClientAdapter = MarketCustomClientAdapter(ref);
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
    final token = ref.read(localDataProvider).accessToken;
    if (token != null) {
      options.headers[HttpHeaders.authorizationHeader] = 'Bearer $token';
      debugPrint('CUSTOM CLIENT ACCESS TOKEN $token');
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
    final token = ref.read(localDataProvider).marketAccessToken;
    if (token != null) {
      options.headers[HttpHeaders.authorizationHeader] = 'Bearer $token';
      debugPrint('CUSTOM CLIENT ACCESS TOKEN $token');
    }
    return super.fetch(options, requestStream, cancelFuture);
  }
}

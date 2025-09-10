
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

    handler.reject(err);

  }
}
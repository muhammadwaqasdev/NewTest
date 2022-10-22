import 'package:dio/dio.dart';

class ApiInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers = {
      ...options.headers,
      "Authorization": "Bearer "
    };
    super.onRequest(options, handler);
  }
}

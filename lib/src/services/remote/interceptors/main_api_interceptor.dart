import 'package:Test/src/services/local/auth_service.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class ApiInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final authService = Get.find<AuthService>();
    options.headers = {
      ...options.headers,
      "Authorization": "Bearer ${authService.user?.token}"
    };
    super.onRequest(options, handler);
  }
}

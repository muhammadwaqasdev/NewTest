import 'package:Test/src/services/local/auth_service.dart';
import 'package:Test/src/services/remote/api_service.dart';
import 'package:get/get.dart';

Future<void> initServices() async {
  print("starting services...");
  await Get.putAsync<ApiService>(() async => await ApiService());
  await Get.putAsync<AuthService>(() async => await AuthService());
  print("all services started...");
}

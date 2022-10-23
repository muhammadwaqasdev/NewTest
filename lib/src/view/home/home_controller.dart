import 'package:get/get.dart';
import 'package:getx_templete/src/services/local/auth_service.dart';

class HomeController extends GetxController with AuthViewModel {
  //TODO: Implement HomeController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() {
    count.value++;
    authService.user.add("abd");
  }
}

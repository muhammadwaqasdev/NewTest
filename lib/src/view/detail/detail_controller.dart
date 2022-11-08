import 'package:Test/src/services/local/navigation_service.dart';
import 'package:get/get.dart';

class DetailController extends GetxController {
  DetailExtra argumentData = Get.arguments as DetailExtra;

  String name = "";
  String schoolName = "";
  String phone = "";

  @override
  void onInit() {
    name = argumentData.name;
    schoolName = argumentData.schoolName;
    phone = argumentData.phone;
    super.onInit();
  }

  login() {
    NavService.login();
  }
}

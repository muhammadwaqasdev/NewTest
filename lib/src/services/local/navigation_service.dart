import 'package:get/get.dart';
import 'package:getx_templete/src/configs/routes/app_pages.dart';

class NavService {
  static void splash({dynamic extra}) => Get.toNamed(Routes.SPLASH, arguments: extra);
  static void home({dynamic extra}) => Get.toNamed(Routes.HOME, arguments: extra);
  static void login({dynamic extra}) => Get.toNamed(Routes.LOGIN, arguments: extra);
}

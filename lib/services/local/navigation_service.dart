import 'package:get/get.dart';
import 'package:getx_templete/base/routes/app_pages.dart';

class NavService {
  static void home({dynamic extra}) =>
      Get.toNamed(Routes.HOME, arguments: extra);
}

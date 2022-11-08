import 'package:Test/src/configs/routes/app_pages.dart';
import 'package:get/get.dart';

class NavService {
  static void input({dynamic arguments}) =>
      Get.toNamed(Routes.INPUT, arguments: arguments);

  static void detail({dynamic arguments}) =>
      Get.toNamed(Routes.DETAIL, arguments: arguments);

  static void home({dynamic arguments}) =>
      Get.toNamed(Routes.HOME, arguments: arguments);

  static void login({dynamic arguments}) =>
      Get.toNamed(Routes.LOGIN, arguments: arguments);
}

class DetailExtra {
  final String name;
  final String schoolName;
  final String phone;

  DetailExtra({
    required this.name,
    required this.schoolName,
    required this.phone,
  });
}

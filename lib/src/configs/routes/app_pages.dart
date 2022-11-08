import 'package:Test/src/view/detail/detail_binding.dart';
import 'package:Test/src/view/detail/detail_view.dart';
import 'package:get/get.dart';

import '../../view/home/home_binding.dart';
import '../../view/home/home_view.dart';
import '../../view/input/input_binding.dart';
import '../../view/input/input_view.dart';
import '../../view/login/login_binding.dart';
import '../../view/login/login_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.INPUT;

  static final routes = [
    GetPage(
      name: _Paths.INPUT,
      page: () => const InputView(),
      binding: InputBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL,
      page: () => const DetailView(),
      binding: DetailBinding(),
    ),
  ];
}

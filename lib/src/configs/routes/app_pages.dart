import 'package:get/get.dart';
import 'package:getx_templete/src/view/home/home_binding.dart';
import 'package:getx_templete/src/view/home/home_view.dart';
import 'package:getx_templete/src/view/login/login_binding.dart';
import 'package:getx_templete/src/view/login/login_view.dart';
import 'package:getx_templete/src/view/splash/splash_binding.dart';
import 'package:getx_templete/src/view/splash/splash_view.dart';
import 'package:getx_templete/src/view/splash/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
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
  ];
}

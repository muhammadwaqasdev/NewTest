import 'package:get/get.dart';

import '../../app/home/home_binding.dart';
import '../../app/home/home_view.dart';
import '../../app/login/login_binding.dart';
import '../../app/login/login_view.dart';
import '../../app/splash/splash_binding.dart';
import '../../app/splash/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
  ];
}

import 'package:Test/src/configs/app_setup.dart';
import 'package:Test/src/services/local/auth_service.dart';
import 'package:Test/src/services/local/flavor_service.dart';
import 'package:Test/src/view/app_view.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  AuthService.prefs = await SharedPreferences.getInstance();
  // getting package
  final package = await PackageInfo.fromPlatform();
  initServices();

  // app flavor init
  FlavorService.init(package);
  runApp(
    AppView(),
  );
}

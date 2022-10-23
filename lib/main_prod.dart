import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_templete/src/view/app_view.dart';
import 'package:getx_templete/src/configs/app_setup.dart';
import 'package:getx_templete/src/services/local/flavor_service.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'src/configs/routes/app_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // getting package
  final package = await PackageInfo.fromPlatform();

  initServices();

  // app flavor init
  FlavorService.init(package);
  runApp(
    AppView(),
  );
}

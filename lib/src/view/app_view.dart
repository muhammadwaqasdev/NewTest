import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_templete/src/configs/routes/app_pages.dart';
import 'package:getx_templete/src/configs/constants.dart';

class AppView extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: Constants.appTitle,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          fontFamily: ''
      ),
      builder: (context, child) {
        return Stack(
          children: [child!],
        );
      },
    );
  }
}

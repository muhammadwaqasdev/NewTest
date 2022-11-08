import 'package:Test/src/configs/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppScreen extends StatelessWidget {
  final Widget body;
  final PreferredSizeWidget? appBar;
  final EdgeInsetsGeometry? padding;

  const AppScreen({Key? key, required this.body, this.appBar, this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark),
      child: Scaffold(
        backgroundColor: AppColors.white,
        extendBodyBehindAppBar: true,
        appBar: appBar,
        body: Container(
          padding: padding ?? EdgeInsets.only(left: 20, right: 20),
          child: body,
        ),
      ),
    );
  }
}

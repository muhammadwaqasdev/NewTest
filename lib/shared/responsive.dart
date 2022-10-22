import 'package:flutter/material.dart';

class ResponsiveBuilder extends StatelessWidget {
  final Widget mobile;
  final Widget web;
  final Widget tablet;

  const ResponsiveBuilder({
    Key? key,
    required this.mobile,
    required this.web,
    required this.tablet,
  }) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 650;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 650;

  static bool isWeb(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  static bool isTableWithExceed(BuildContext context) =>
      MediaQuery.of(context).size.width <= 900;

  static bool isWidthExceed(BuildContext context, double width) =>
      MediaQuery.of(context).size.width <= width;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      // If our width is more than 1100 then we consider it a desktop
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1100) {
          return web;
        }
        // If width it less then 1100 and more then 650 we consider it as tablet
        else if (constraints.maxWidth >= 650) {
          return tablet;
        }
        // Or less then that we called it mobile
        else {
          return mobile;
        }
      },
    );
  }
}

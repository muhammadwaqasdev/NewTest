import 'package:Test/src/configs/styles/app_colors.dart';
import 'package:Test/src/configs/styles/text_theme.dart';
import 'package:Test/src/widget/loading_indicator.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String title;
  final Function onTap;
  final double? width;
  final double? height;
  final Color? color;
  final Color? textColor;
  final bool isBusy;

  const MainButton(
      {Key? key,
      required this.title,
      this.width,
      this.height,
      this.color,
      required this.onTap,
      this.textColor,
      this.isBusy = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (isBusy == false) onTap();
      },
      child: Container(
        width: width ?? 200,
        height: height ?? 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: color ?? AppColors.primary,
        ),
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: isBusy
            ? Center(
                child: LoadingIndicator(
                color: textColor ?? AppColors.white,
              ))
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(title,
                      textAlign: TextAlign.center,
                      style: TextStyling.heading1.copyWith(
                        color: textColor ?? AppColors.white,
                      )),
                ],
              ),
      ),
    );
  }
}

class SmallButton extends StatelessWidget {
  final String title;
  final Function onTap;
  final double? height;
  final double? width;

  const SmallButton({
    Key? key,
    required this.title,
    required this.onTap,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        width: width ?? 80,
        height: height ?? 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.secondary,
        ),
        child: Center(
            child: Text(
          title,
          style: TextStyling.text.copyWith(color: AppColors.primary),
        )),
      ),
    );
  }
}

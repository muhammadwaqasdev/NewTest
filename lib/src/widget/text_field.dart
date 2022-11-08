import 'package:Test/src/configs/styles/app_colors.dart';
import 'package:Test/src/configs/styles/text_theme.dart';
import 'package:flutter/material.dart';

class CustomInput extends StatefulWidget {
  bool? isPassword;
  final String hint;
  final String title;
  final String? Subtitle;
  final TextEditingController controller;
  final double? width;
  final double? fontSize;
  final Function onTap;
  final Widget? icon;
  final TextInputType? inputType;
  final ValueChanged<String>? onChanged;
  final String? errorMessage;
  final Colors? color;

  CustomInput({
    Key? key,
    this.isPassword,
    required this.controller,
    required this.onTap,
    required this.hint,
    this.title = "",
    this.onChanged,
    this.icon,
    this.width,
    this.errorMessage,
    this.color,
    this.inputType,
    this.fontSize,
    this.Subtitle,
  }) : super(key: key);

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? 400,
      decoration: BoxDecoration(
        color: AppColors.primary.withOpacity(0.6),
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextFormField(
        onTap: () {
          widget.onTap();
        },
        onChanged: (val) {},
        validator: (val) {
          bool emailValid = true;
          if (widget.inputType == TextInputType.emailAddress) {
            emailValid = RegExp(
                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                .hasMatch(widget.controller.text);
          }
          return (val!.isEmpty ||
                  (emailValid == false) ||
                  widget.controller.text.startsWith("0", 0))
              ? widget.errorMessage
              : null;
        },
        keyboardType: widget.inputType ?? TextInputType.text,
        textInputAction: TextInputAction.next,
        controller: widget.controller,
        obscureText: widget.isPassword ?? false,
        obscuringCharacter: "*",
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.primary, width: 1.0),
            borderRadius: BorderRadius.circular(12),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12),
          ),
          hintText: widget.hint,
          hintStyle: TextStyling.text.copyWith(
            color: AppColors.white,
          ),
          contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        ),
        style: TextStyling.text.copyWith(color: AppColors.primary),
      ),
    );
  }
}

class SecondaryInputField extends StatefulWidget {
  bool? isPassword;
  final String hint;
  final String? Subtitle;
  final TextEditingController controller;
  final double? width;
  final double? fontSize;
  final Function onTap;
  final Widget? icon;
  final TextInputType? inputType;
  final ValueChanged<String>? onChanged;
  final String? errorMessage;
  final Colors? color;

  SecondaryInputField(
      {Key? key,
      required this.hint,
      required this.controller,
      this.width,
      required this.onTap,
      this.icon,
      this.isPassword,
      this.inputType,
      this.onChanged,
      this.errorMessage,
      this.color,
      this.Subtitle,
      this.fontSize})
      : super(key: key);

  @override
  State<SecondaryInputField> createState() => _SecondaryInputFieldState();
}

class _SecondaryInputFieldState extends State<SecondaryInputField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: () {
        widget.onTap();
      },
      onChanged: (val) {},
      validator: (val) {
        bool emailValid = true;
        if (widget.inputType == TextInputType.emailAddress) {
          emailValid = RegExp(
                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
              .hasMatch(widget.controller.text);
        }
        return (val!.isEmpty ||
                (emailValid == false) ||
                widget.controller.text.startsWith("0", 0))
            ? widget.errorMessage
            : null;
      },
      keyboardType: widget.inputType ?? TextInputType.text,
      textInputAction: TextInputAction.next,
      controller: widget.controller,
      obscureText: widget.isPassword ?? false,
      obscuringCharacter: "*",
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.darkGrey),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.primary, width: 2),
        ),
        hintText: widget.hint,
        hintStyle: TextStyling.text.copyWith(
          color: AppColors.darkGrey,
        ),
        contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      ),
      style: TextStyling.text.copyWith(color: AppColors.primary),
    );
  }
}

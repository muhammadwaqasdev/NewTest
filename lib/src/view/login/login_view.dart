import 'package:Test/src/widget/app_screen.dart';
import 'package:Test/src/widget/buttons.dart';
import 'package:Test/src/widget/spacing.dart';
import 'package:Test/src/widget/text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScreen(
        appBar: AppBar(
          title: const Text('LoginView'),
          centerTitle: true,
        ),
        body: Center(
          child: Form(
            child: Builder(builder: (ctx) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomInput(
                    controller: controller.username,
                    onTap: () {},
                    hint: "username",
                    width: 200,
                    errorMessage: "Required",
                    inputType: TextInputType.emailAddress,
                  ),
                  const VerticalSpacing(10),
                  CustomInput(
                    controller: controller.password,
                    onTap: () {},
                    hint: "password",
                    width: 200,
                    isPassword: true,
                    errorMessage: "Required",
                  ),
                  const VerticalSpacing(20),
                  MainButton(
                      title: "Login",
                      isBusy: controller.isBusy,
                      onTap: () {
                        controller.login(ctx);
                      }),
                ],
              );
            }),
          ),
        ));
  }
}

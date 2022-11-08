import 'package:Test/src/widget/app_screen.dart';
import 'package:Test/src/widget/buttons.dart';
import 'package:Test/src/widget/spacing.dart';
import 'package:Test/src/widget/text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'input_controller.dart';

class InputView extends GetView<InputController> {
  const InputView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScreen(
      appBar: AppBar(
        title: const Text('Input Data'),
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
          width: context.mediaQuerySize.width / 1.5,
          child: Form(
            child: Builder(builder: (ctx) {
              return SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SecondaryInputField(
                      controller: controller.name,
                      onTap: () {},
                      hint: "Name",
                      width: 200,
                      errorMessage: "Required",
                    ),
                    const VerticalSpacing(10),
                    SecondaryInputField(
                      controller: controller.phone,
                      onTap: () {},
                      hint: "Phone no.",
                      width: 200,
                    ),
                    const VerticalSpacing(10),
                    SecondaryInputField(
                      controller: controller.schoolName,
                      onTap: () {},
                      hint: "School Name",
                      width: 200,
                      errorMessage: "Required",
                    ),
                    const VerticalSpacing(10),
                    SmallButton(
                      title: "Submit",
                      onTap: () {
                        controller.submit(ctx);
                      },
                      width: 120,
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}

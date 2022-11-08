import 'package:Test/src/configs/styles/text_theme.dart';
import 'package:Test/src/widget/app_screen.dart';
import 'package:Test/src/widget/buttons.dart';
import 'package:Test/src/widget/spacing.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'detail_controller.dart';

class DetailView extends GetView<DetailController> {
  const DetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScreen(
      appBar: AppBar(
        title: const Text('DetailView'),
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
                    Text(
                      controller.name,
                      style: TextStyling.text,
                    ),
                    const VerticalSpacing(10),
                    Text(
                      controller.schoolName,
                      style: TextStyling.text,
                    ),
                    const VerticalSpacing(10),
                    Text(
                      controller.phone,
                      style: TextStyling.text,
                    ),
                    const VerticalSpacing(20),
                    MainButton(
                      title: "Go to login",
                      onTap: () {
                        controller.login();
                      },
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

import 'package:Test/src/services/local/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as m;
import 'package:get/get.dart';

class InputController extends GetxController {
  TextEditingController name = TextEditingController();
  TextEditingController schoolName = TextEditingController();
  TextEditingController phone = TextEditingController();

  submit(BuildContext context) {
    if (m.Form.of(context)?.validate() ?? false) {
      DetailExtra data = DetailExtra(
          name: name.text, schoolName: schoolName.text, phone: phone.text);
      NavService.detail(arguments: data);
    }
  }
}

import 'package:Test/src/services/local/auth_service.dart';
import 'package:Test/src/services/local/navigation_service.dart';
import 'package:Test/src/services/remote/api_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as m;
import 'package:get/get.dart';

class LoginController extends GetxController with ApiViewModel, AuthViewModel {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  bool isBusy = false;

  login(BuildContext context) async {
    isBusy = true;
    if (m.Form.of(context)?.validate() ?? false) {
      var response = await apiService.userLogin(username.text, password.text);
      response.when(success: (response) async {
        if (response.success == true) {
          authService.user = response;
          NavService.home();
        }
      }, failure: (error) {
        return print(error);
      });
    }
    isBusy = false;
  }
}

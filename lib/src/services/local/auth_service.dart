import 'dart:convert';

import 'package:Test/src/models/api_models/user_model.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

mixin AuthViewModel {
  AuthService authService = Get.find<AuthService>();
}

class AuthService extends GetxService {
  static late SharedPreferences prefs;
  final _user = Rx<UserModel?>(null).obs;

  UserModel? get user => _user.value.value;

  final String _prefKey = "USER_AUTH";

  AuthService() {
    restoreUserFromLocal();
  }

  set user(UserModel? user) {
    _user.value.value = user;
    _storeLocally();
  }

  logout() {
    _clearUserFromLocal();
  }

  _storeLocally() async {
    if (_user.value.value == null) return;
    prefs.setString(_prefKey, jsonEncode(_user.value.value?.toJson() ?? {}));
  }

  Future<void> restoreUserFromLocal() async {
    if (prefs.containsKey(_prefKey)) {
      user = UserModel.fromJson(jsonDecode(prefs.getString(_prefKey) ?? "{}"));
    }
  }

  _clearUserFromLocal() async {
    if (prefs.containsKey(_prefKey)) {
      prefs.remove(_prefKey);
      _user.value.value = null;
    }
  }
}

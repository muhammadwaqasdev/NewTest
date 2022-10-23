import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

mixin AuthViewModel {
  AuthService authService = Get.find<AuthService>();
}

class AuthService extends GetxService {
  static late SharedPreferences prefs;
  final _user = RxList<String>().obs;

  List<String> get user => _user.value.value;

  final String _prefKey = "USER_AUTH";

  AuthService() {
    restoreUserFromLocal();
  }

  set user(List<String> user) {
    _user.value.value = user;
    _storeLocally();
  }

  logout() {
    _clearUserFromLocal();
  }

  _storeLocally() async {
    if (_user.value == null) return;
    prefs.setStringList(_prefKey, user.toList());
  }


  Future<void> restoreUserFromLocal() async {
    if (prefs.containsKey(_prefKey)) {
      // user = UserDataModel.fromJson(
      //     jsonDecode(prefs.getString(_prefKeyUser) ?? "{}"));
    }
  }

  _clearUserFromLocal() async {
    if (prefs.containsKey(_prefKey)) {
      prefs.remove(_prefKey);
      _user.value.clear();
    }
  }
}

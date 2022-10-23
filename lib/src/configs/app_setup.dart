import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_templete/src/services/local/auth_service.dart';
import 'package:getx_templete/src/services/local/flavor_service.dart';
import 'package:getx_templete/src/services/remote/api_service.dart';

Future<void> initServices() async {
  print("starting services...");
  await Get.putAsync<ApiService>(() async =>  await ApiService());
  await Get.putAsync<AuthService>(() async =>  await AuthService());
  print("all services started...");
}

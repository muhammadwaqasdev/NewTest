import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_templete/services/local/auth_service.dart';
import 'package:getx_templete/services/local/flavor_service.dart';
import 'package:getx_templete/services/remote/api_service.dart';

Future<void> initServices() async {
  print("starting services...");
  await Get.putAsync<ApiService>(() async =>  await ApiService());
  await Get.putAsync<AuthService>(() async =>  await AuthService());
  await Get.putAsync<FlavorService>(() async =>  await FlavorService());
  print("all services started...");
}

import 'package:get/get.dart';

import 'input_controller.dart';

class InputBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InputController>(
      () => InputController(),
    );
  }
}

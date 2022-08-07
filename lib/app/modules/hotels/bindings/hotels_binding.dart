import 'package:get/get.dart';

import '../controllers/hotels_controller.dart';

class HotelsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HotelsController>(
      () => HotelsController(),
    );
  }
}

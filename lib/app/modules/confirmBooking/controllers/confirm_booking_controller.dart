import 'package:get/get.dart';

class ConfirmBookingController extends GetxController {
  //TODO: Implement ConfirmBookingController

  // final count = 0.obs;

  @override
  void onClose() {}
  // void increment() => count.value++;

  final guestCount = 0.obs;
  void increment() => guestCount.value++;

  void decrement() {
    if (guestCount.value > 0) {
      guestCount.value--;
    }
  }
}

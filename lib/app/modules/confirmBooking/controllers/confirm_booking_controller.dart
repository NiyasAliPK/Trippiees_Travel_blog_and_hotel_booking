import 'package:get/get.dart';

class ConfirmBookingController extends GetxController {
  @override
  void onInit() {
    roomCount.value = 0;
    guestCount.value = 0;
    totalAmount.value = 0;
    super.onInit();
  }

  @override
  void onClose() {
    roomCount.value = 0;
    guestCount.value = 0;
    totalAmount.value = 0;
    super.onClose();
  }

  final roomCount = 0.obs;
  final guestCount = 0.obs;
  final totalAmount = 0.obs;
  void increment() {
    guestCount.value++;
    if (guestCount.value % 3 == 1) {
      roomCount.value++;
      totalAmount.value = 800 * roomCount.value;
    }
  }

  void decrement() {
    if (guestCount.value > 0) {
      guestCount.value--;
    }
    if (guestCount.value % 3 == 0) {
      if (guestCount.value == 0) {
        roomCount.value = 0;
        totalAmount.value = 0;
        return;
      }
      roomCount.value--;
      totalAmount.value = 800 * roomCount.value;
    }
  }
}

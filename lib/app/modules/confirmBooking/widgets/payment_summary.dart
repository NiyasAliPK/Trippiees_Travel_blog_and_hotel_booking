import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:trippies/app/data/api/razorpay_api.dart';
import 'package:trippies/app/modules/confirmBooking/controllers/confirm_booking_controller.dart';

import '../../../data/consts/theme.dart';

class PaymentSummary extends StatelessWidget {
  const PaymentSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ConfirmBookingController controller =
        Get.put(ConfirmBookingController());
    final RazorPayAPIController razorPayAPIController =
        Get.put(RazorPayAPIController());
    return Container(
        width: double.infinity,
        height: 200.h,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Obx(() {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Payment summary",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Subtotal"),
                  Text("\$ ${controller.totalAmount}"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total payment"),
                  Text("\$ ${controller.totalAmount}"),
                ],
              ),
              Center(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: primaryColor),
                    onPressed: () {
                      razorPayAPIController.openCheckout();
                    },
                    child: Text("Proceed to payment")),
              )
            ],
          );
        }));
  }
}

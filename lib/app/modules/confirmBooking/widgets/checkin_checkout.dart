import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:trippies/app/data/consts/theme.dart';
import 'package:trippies/app/modules/confirmBooking/controllers/confirm_booking_controller.dart';

class DateSelector extends StatelessWidget {
  DateSelector({Key? key}) : super(key: key);

  final confirmContrller = Get.put(ConfirmBookingController());
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime.now(),
            lastDate: DateTime(2100));
      },
      child: Container(
        width: 100.w,
        height: 35.h,
        decoration: BoxDecoration(
            border: Border.all(color: primaryColor, width: 2),
            borderRadius: BorderRadius.circular(20),
            color: primaryColor.withOpacity(0.2)),
        child: Center(
            child: Text(
          '21-12-21',
          style: TextStyle(fontWeight: FontWeight.bold, color: primaryColor),
        )),
      ),
    );
  }
}

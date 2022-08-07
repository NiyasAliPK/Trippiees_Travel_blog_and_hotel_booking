import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:trippies/app/data/consts/theme.dart';
import 'package:trippies/app/modules/confirmBooking/widgets/checkin_checkout.dart';
import 'package:trippies/app/modules/confirmBooking/widgets/payment_summary.dart';

import '../controllers/confirm_booking_controller.dart';

class ConfirmBookingView extends GetView<ConfirmBookingController> {
  final confirmContrller = Get.put(ConfirmBookingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: primaryColor,
              )),
          title: Text(
            'Confirm Booking',
            style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 150.w,
                    height: 150.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/hotel1.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  SizedBox(width: 15.w),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
                        child: Text(
                          'Hotel Name',
                          style: TextStyle(
                              color: primaryColor,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        'Hotel Address :',
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 15.h),
              Container(
                padding: EdgeInsets.all(10),
                width: 400.w,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 233, 233, 233)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Non-refundable',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 7.h),
                    Text(
                      'you can not refund the amount once you cancell your booking',
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DateSelector(),
                    DateSelector(),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total guest",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              confirmContrller.increment();
                            },
                            icon: Icon(Icons.add)),
                        Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: primaryColor, width: 2)),
                            child: Center(
                                child: Obx(() => Text(
                                    confirmContrller.guestCount.value > 0
                                        ? confirmContrller.guestCount.value
                                            .toString()
                                        : "0")))),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10.h),
                          child: IconButton(
                              onPressed: () {
                                confirmContrller.decrement();
                              },
                              icon: Icon(Icons.minimize_rounded)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              PaymentSummary()
            ],
          )),
        ));
  }
}

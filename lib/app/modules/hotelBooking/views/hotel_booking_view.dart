import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:trippies/app/data/consts/theme.dart';
import 'package:trippies/app/modules/confirmBooking/views/confirm_booking_view.dart';

import '../controllers/hotel_booking_controller.dart';

class HotelBookingView extends GetView<HotelBookingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: primaryColor,
              )),
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text('Hotel Booking',
              style:
                  TextStyle(color: primaryColor, fontWeight: FontWeight.bold)),
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: SafeArea(
              child: ListView(
            children: [
              CarouselSlider(
                options: CarouselOptions(height: 250.h),
                items: [1, 2, 3, 4, 5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: 300.w,
                        decoration: BoxDecoration(
                            // color: primaryColor,
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/hotel${i + 1}.jpg"),
                                fit: BoxFit.cover),
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                      );
                    },
                  );
                }).toList(),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 25.h),
                  Expanded(
                    flex: 0,
                    child: Text("Hotel Name",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 32.r,
                          color: Colors.blue,
                        )),
                  ),
                  SizedBox(height: 25.h),
                  Expanded(
                    flex: 0,
                    child: Text(
                      "    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 16.r,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.red,
                      ),
                      Text(
                        'Hotel Address',
                        style: TextStyle(color: primaryColor),
                      )
                    ],
                  ),
                  SizedBox(height: 40.h),
                  SizedBox(
                    width: double.infinity,
                    height: 40.h,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: primaryColor,
                      ),
                      onPressed: () {
                        Get.to(ConfirmBookingView());
                      },
                      child: Text(
                        "Book Now",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.sp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
        ));
  }
}

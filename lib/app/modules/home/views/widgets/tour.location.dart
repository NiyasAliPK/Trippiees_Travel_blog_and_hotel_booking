import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:trippies/app/data/consts/theme.dart';
import 'package:trippies/app/modules/home/controllers/home_controller.dart';
import 'package:trippies/app/modules/locationDetails/views/location_details_view.dart';

class TourLocationByDistrict extends StatelessWidget {
  TourLocationByDistrict({Key? key}) : super(key: key);

  final _homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: _homeController.districtList.length,
      itemBuilder: (context, index, realIndex) {
        final districtName = _homeController.districtList[index];
        return Stack(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 30.h, top: 10.h),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black45,
                      blurRadius: 1.0,
                    ),
                  ],
                  image: DecorationImage(
                    image: index % 2 == 0
                        ? const AssetImage("assets/images/Auth Background.jpg")
                        : const AssetImage("assets/images/kerala1.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 0.9, sigmaY: 0.9),
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.1)))),
                      Expanded(
                        flex: 0,
                        child: Text(
                          districtName,
                          style: TextStyle(
                            fontSize: 18.r,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Expanded(
                        flex: 0,
                        child: Text(
                          "Lorem Ipsum is simply dummy text of the Lorem of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever sincambled it to make a type recimen book. book.",
                          style: TextStyle(
                            fontSize: 14.r,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 280.h,
              left: 60.w,
              child: SizedBox(
                height: 60,
                width: 150,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.r))),
                  child: Text(
                    "Explore",
                    style: TextStyle(
                      fontSize: 16.r,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    Get.to(() => LocationDetailsView(
                          locationName: districtName,
                          image: index % 2 == 0
                              ? "assets/images/Auth Background.jpg"
                              : "assets/images/kerala1.jpg",
                        ));
                  },
                ),
              ),
            ),
          ],
        );
      },
      options: CarouselOptions(
        height: 350.h,
        viewportFraction: 0.7,
        autoPlay: true,
        // autoPlayInterval: const Duration(seconds: 5),
        padEnds: true,
        enlargeCenterPage: true,
      ),
    );
  }
}

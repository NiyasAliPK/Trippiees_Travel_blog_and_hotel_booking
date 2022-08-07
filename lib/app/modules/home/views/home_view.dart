import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:trippies/app/data/consts/theme.dart';
import 'package:trippies/app/modules/home/views/widgets/districts.list.dart';
import 'package:trippies/app/modules/home/views/widgets/tour.location.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        title: Text(
          'Trippiees',
          style: TextStyle(
              color: primaryColor, fontSize: 35.r, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 10, top: 20),
              child: Text(
                'User Name',
                style: TextStyle(color: primaryColor),
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: SafeArea(
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                      child: IconButton(
                          onPressed: () {}, icon: Icon(Icons.search))),
                ],
              ),
              // SizedBox(height: 10.h),
              DistrictsList(),
              SizedBox(height: 5.h),
              TourLocationByDistrict(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:trippies/app/data/consts/theme.dart';
import 'package:trippies/app/modules/hotels/views/hotels_view.dart';

import '../controllers/location_details_controller.dart';

class LocationDetailsView extends GetView<LocationDetailsController> {
  final String locationName;
  final String image;

  LocationDetailsView({required this.locationName, required this.image});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Location Name',
                    style: TextStyle(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                SizedBox(height: 5.h),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      color: Colors.red,
                    ),
                    Text(locationName,
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 25.h),
            child: IconButton(
              onPressed: () => Get.back(),
              icon: Icon(
                Icons.arrow_back_ios,
                size: 35.h,
                color: Colors.blue,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                flex: 0,
                child: Container(
                  height: 300.h,
                  width: double.infinity,
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50.r),
                      topLeft: Radius.circular(50.r),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 25.h),
                        Expanded(
                          flex: 0,
                          child: Text("About",
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
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        SizedBox(height: 15.h),
                        Center(
                          child: SizedBox(
                            width: double.infinity,
                            height: 40.h,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: primaryColor,
                              ),
                              onPressed: () {
                                Get.to(HotelsView());
                              },
                              child: Text(
                                "Look for rooms here",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15.h),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

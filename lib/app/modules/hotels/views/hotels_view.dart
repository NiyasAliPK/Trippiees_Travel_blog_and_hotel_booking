import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:trippies/app/data/consts/theme.dart';
import 'package:trippies/app/modules/hotels/widgets/filter.bottomsheet.dart';
import 'package:trippies/app/modules/hotels/widgets/nearby_hotel_list.dart';

import '../controllers/hotels_controller.dart';

class HotelsView extends GetView<HotelsController> {
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
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'Nearby Hotels',
            style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 25.sp),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Get.bottomSheet(
                    isScrollControlled: true,
                    useRootNavigator: true,
                    // isScrollControlled: true,
                    FilterBottomSheet());
              },
              icon: Icon(
                Icons.filter_list,
                color: primaryColor,
                size: 35.r,
              ),
            ),
          ],
        ),
        body: Padding(
            padding: EdgeInsets.all(16),
            child: SafeArea(
              child: Stack(
                children: [
                  const NearbyHotelList(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: 'search',
                                suffixIcon: IconButton(
                                  icon: Icon(Icons.search),
                                  onPressed: () {},
                                ),
                                contentPadding: const EdgeInsets.all(15),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30))),
                          ),
                        ),
                        SizedBox(width: 5.w),
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}

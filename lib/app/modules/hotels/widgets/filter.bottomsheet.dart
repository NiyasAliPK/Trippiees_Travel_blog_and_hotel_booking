import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:trippies/app/data/consts/theme.dart';
import 'package:trippies/app/modules/hotels/controllers/hotels_controller.dart';
import 'package:trippies/app/modules/hotels/widgets/filterchips.dart';

class FilterBottomSheet extends StatelessWidget {
  FilterBottomSheet({Key? key}) : super(key: key);

  final HotelsController _hotelsController = Get.put(HotelsController());

  @override
  Widget build(BuildContext context) {
    const sizedBox10 = SizedBox(height: 10);
    return Padding(
      padding: EdgeInsets.fromLTRB(16.w, 0.0, 16.w, 0.0),
      child: Container(
        padding: EdgeInsets.all(16.r),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.r),
                topLeft: Radius.circular(20.r))),
        child: ListView(
          shrinkWrap: true,
          children: [
            sizedBox10,
            Text(
              "Filter hotels",
              style: TextStyle(
                fontSize: 18.sp,
                color: primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            sizedBox10,
            Text(
              "Sort by",
              style: TextStyle(
                fontSize: 14.sp,
                color: primaryColor,
              ),
            ),
            sizedBox10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FilterChipCustom(
                    visibility: false, onTap: () {}, text: "Nearest"),
                FilterChipCustom(
                    visibility: true, onTap: () {}, text: "Budget friendly"),
                FilterChipCustom(
                    visibility: false, onTap: () {}, text: "Luxuary"),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              "Operational",
              style: TextStyle(fontSize: 14.sp, color: primaryColor),
            ),
            sizedBox10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FilterChipCustom(visibility: true, onTap: () {}, text: "Open"),
                FilterChipCustom(
                    visibility: false, onTap: () {}, text: "Closed"),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              "Distance",
              style: TextStyle(fontSize: 14.sp, color: primaryColor),
            ),
            sizedBox10,
            GetBuilder<HotelsController>(
              builder: (controller) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: [
                          TextSpan(
                              text: controller.currentDistance.toString(),
                              style: const TextStyle(color: Colors.amber)),
                          TextSpan(
                              text: " km",
                              style: TextStyle(color: primaryColor)),
                        ],
                      ),
                    ),
                    Slider(
                      activeColor: Colors.amber,
                      thumbColor: primaryColor,
                      divisions: 10,
                      label: controller.currentDistance.toString(),
                      mouseCursor: MouseCursor.uncontrolled,
                      value: controller.currentDistance,
                      onChanged: (value) {
                        controller.distanceFilter(value);
                      },
                      max: 5,
                      min: 1,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Budget",
                      style: TextStyle(fontSize: 14.sp, color: primaryColor),
                    ),
                    sizedBox10,
                    RichText(
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: [
                          TextSpan(
                            text: " \$ ",
                            style: TextStyle(color: primaryColor),
                          ),
                          TextSpan(
                            text: ((controller.currentAmount * 1000).round())
                                .toString(),
                            style: TextStyle(color: Colors.amber),
                          ),
                        ],
                      ),
                    ),
                    Slider(
                      activeColor: Colors.amber,
                      thumbColor: primaryColor,
                      divisions: 100,
                      label: ((controller.currentAmount * 1000).round())
                          .toString(),
                      mouseCursor: MouseCursor.uncontrolled,
                      value: controller.currentAmount,
                      onChanged: (value) {
                        controller.amountFilter(value);
                      },
                      max: 10,
                      min: 1,
                    )
                  ],
                );
              },
            ),
            Text(
              "Rating",
              style: TextStyle(fontSize: 14.sp, color: primaryColor),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FilterChipCustom(
                    visibility: true, onTap: () {}, text: "Below 4"),
                FilterChipCustom(
                    visibility: false, onTap: () {}, text: "4 to 6"),
                FilterChipCustom(
                    visibility: false, onTap: () {}, text: "6 to 10"),
              ],
            ),
            sizedBox10,
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              style: ElevatedButton.styleFrom(primary: primaryColor),
              child: const Text(
                "Apply",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            sizedBox10,
          ],
        ),
      ),
    );
  }
}

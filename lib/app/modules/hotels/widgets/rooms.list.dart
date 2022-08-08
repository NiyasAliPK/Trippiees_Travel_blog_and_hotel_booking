import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trippies/app/data/consts/theme.dart';

class RoomsList extends StatelessWidget {
  const RoomsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16.w, 50.h, 16.w, 0),
      child: ListView.separated(
        itemCount: 10,
        separatorBuilder: (context, index) {
          return const Divider();
        },
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 90.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.r),
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/hotels/hotel${index + 1}.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            textAlign: TextAlign.start,
                            "Hotel Name",
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 180.w,
                            child: Text(
                              textAlign: TextAlign.start,
                              "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer",
                              style: TextStyle(
                                  fontSize: 12.sp, color: Colors.black45),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                  textAlign: TextAlign.start,
                                  "4.5 km",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey)),
                              Text(
                                textAlign: TextAlign.start,
                                "7.6 🌟",
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

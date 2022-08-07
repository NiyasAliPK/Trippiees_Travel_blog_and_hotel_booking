import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trippies/app/data/consts/theme.dart';

class InboxList extends StatelessWidget {
  const InboxList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return SizedBox(
          child: Card(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 20.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.copyright_rounded,
                    size: 35.r,
                    color: Colors.amber,
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Title",
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "This has been the industry's standard dummy text ever since the 1500s and scrambled it to",
                          style: TextStyle(fontSize: 13, color: Colors.black45),
                        )
                      ],
                    ),
                  ),
                  Text(
                    "7 Jan",
                    style: TextStyle(fontSize: 14, color: Colors.black45),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

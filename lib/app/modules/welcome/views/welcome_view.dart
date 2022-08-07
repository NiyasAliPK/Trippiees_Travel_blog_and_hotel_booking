import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:trippies/app/data/consts/theme.dart';
import 'package:trippies/app/modules/login/views/login_view.dart';
import 'package:trippies/app/modules/signup/views/signup_view.dart';

import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/Intro-jpg.jpg'),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.all(16.0.h),
          child: SafeArea(
              child: Column(
            children: [
              SizedBox(height: 50.h),
              Text(
                'Welcome \n To',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.r,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.only(left: 50.w),
                child: Text(
                  'Trippiees',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.r,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 100.h),
              Padding(
                padding: EdgeInsets.only(left: 80.w),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50.h,
                      width: 200.w,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(() => LoginView());
                        },
                        child: Text(
                          '  LOGIN  ',
                          style: TextStyle(
                              color: buttonTextColor,
                              fontWeight: FontWeight.bold),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0.r),
                            )),
                      ),
                    ),
                    SizedBox(height: 30.h),
                    SizedBox(
                      width: 200.w,
                      height: 50.h,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(() => SignupView());
                        },
                        child: Text('SIGN UP',
                            style: TextStyle(
                                color: buttonTextColor,
                                fontWeight: FontWeight.bold)),
                        style: ElevatedButton.styleFrom(
                          primary: primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0.r),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}

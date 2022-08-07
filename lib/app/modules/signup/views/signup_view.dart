import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:trippies/app/data/consts/theme.dart';
import 'package:trippies/app/data/widgets/textfields.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  final SignupController _signupController = Get.put(SignupController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back,
                color: primaryColor,
              )),
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0.r),
          child: SafeArea(
              child: ListView(
            children: [
              SizedBox(
                height: 50.h,
              ),
              Column(
                children: [
                  Text(
                    'Trippiees',
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 50.r,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 15.h),
                  Text(
                    'REGISTER',
                    style: TextStyle(
                        color: normalTextColor,
                        fontSize: 15.r,
                        letterSpacing: 2),
                  ),
                ],
              ),
              SizedBox(height: 30.h),
              InputField(
                controller: _signupController.nameController,
                hintText: 'Your Name',
              ),
              InputField(
                controller: _signupController.emailController,
                hintText: 'Email ID',
              ),
              InputField(
                controller: _signupController.passwordController,
                hintText: 'Password',
              ),
              InputField(
                controller: _signupController.confirmPassController,
                hintText: 'Password',
              ),
              SizedBox(height: 20.h),
              Container(
                height: 50.h,
                padding: EdgeInsets.only(left: 80.w, right: 80.w),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('SIGN UP',
                      style: TextStyle(
                          color: buttonTextColor, fontWeight: FontWeight.bold)),
                  style: ElevatedButton.styleFrom(
                    primary: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0.r),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 60.0.w, right: 60.w, top: 20.h),
                child: Divider(
                  color: normalTextColor,
                  height: 40.h,
                ),
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'BECOME A VENDOR',
                      style:
                          TextStyle(color: normalTextColor, letterSpacing: 2),
                    ),
                  ),
                ],
              ),
            ],
          )),
        ));
  }
}

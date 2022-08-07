import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trippies/app/data/consts/theme.dart';

class InputField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  const InputField(
      {super.key, required this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 25.h, left: 40.w, right: 40.w),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: EdgeInsets.all(15.h),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primaryColor, width: 3),
            borderRadius: BorderRadius.circular(30.r),
          ),
        ),
      ),
    );
  }
}

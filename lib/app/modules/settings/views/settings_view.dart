import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:trippies/app/data/consts/theme.dart';

import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          "Settings",
          style: TextStyle(
            fontSize: 30,
            color: primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SizedBox(height: 50.h),
            SettingsTiles(
              text: "About us",
              ontap: () {},
            ),
            const Divider(),
            SettingsTiles(
              text: "Visit our website",
              ontap: () {},
            ),
            const Divider(),
            SettingsTiles(
              text: "Help center",
              ontap: () {},
            ),
            const Divider(),
            SettingsTiles(
              text: "Customer service",
              ontap: () {},
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}

class SettingsTiles extends StatelessWidget {
  const SettingsTiles({Key? key, required this.text, required this.ontap})
      : super(key: key);
  final String text;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: ListTile(
        onTap: ontap,
        leading: const Icon(Icons.arrow_forward_ios_sharp),
        title: Text(
          text,
          style: TextStyle(
            fontSize: 18.sp,
            color: primaryColor,
          ),
          // fontFamily: "RobotoMono",
        ),
      ),
    );
  }
}

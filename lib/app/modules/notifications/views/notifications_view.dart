import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:trippies/app/data/consts/theme.dart';
import 'package:trippies/app/modules/notifications/widgets/inbox_list.dart';

import '../controllers/notifications_controller.dart';

class NotificationsView extends GetView<NotificationsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.1,
        automaticallyImplyLeading: false,
        title: Text(
          "Inbox",
          style: TextStyle(
            fontSize: 20,
            color: primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
          padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 0),
          child: const InboxList()),
    );
  }
}

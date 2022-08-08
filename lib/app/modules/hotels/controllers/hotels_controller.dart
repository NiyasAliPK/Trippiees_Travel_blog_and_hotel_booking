import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HotelsController extends GetxController {
  final searchRoomsCtrl = TextEditingController();

  double currentDistance = 5;
  double currentAmount = 10;

  distanceFilter(value) {
    currentDistance = value;
    update();
  }

  amountFilter(value) {
    currentAmount = value;
    update();
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:trippies/app/data/consts/theme.dart';
import 'package:trippies/app/modules/favorites/widgets/favorite_locations_list.dart';

import '../controllers/favorites_controller.dart';

class FavoritesView extends GetView<FavoritesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'Saved Places',
            style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 25.sp),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add,
                  color: Colors.black,
                ))
          ],
        ),
        body: Padding(
            padding: EdgeInsets.all(16),
            child: SafeArea(
              child: Stack(
                children: [
                  const FavouriteLocationsList(),
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

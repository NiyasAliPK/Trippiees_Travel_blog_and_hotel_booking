import 'package:bottom_bar/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:trippies/app/modules/favorites/views/favorites_view.dart';
import 'package:trippies/app/modules/home/views/home_view.dart';
import 'package:trippies/app/modules/notifications/views/notifications_view.dart';
import 'package:trippies/app/modules/settings/views/settings_view.dart';

import '../controllers/bottom_navigation_controller.dart';

class BottomNavigationView extends GetView<BottomNavigationController> {
  final _pageController = PageController();
  final _bottomController = Get.put(BottomNavigationController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavigationController>(builder: (context) {
      return Scaffold(
        body: PageView(
          controller: _pageController,
          children: [
            HomeView(),
            FavoritesView(),
            SettingsView(),
            NotificationsView()
          ],
          onPageChanged: (index) {
            _bottomController.swithPageIndex(index);
          },
        ),
        bottomNavigationBar: BottomBar(
          selectedIndex: _bottomController.currentPage,
          onTap: (int index) {
            _pageController.jumpToPage(index);
            _bottomController.swithPageIndex(index);
          },
          items: <BottomBarItem>[
            BottomBarItem(
              icon: Icon(
                Icons.home,
                size: 35.w,
              ),
              title: const Text('Home'),
              activeColor: Colors.blueAccent,
            ),
            BottomBarItem(
              icon: Icon(Icons.favorite, size: 35.w),
              title: const Text('Favorites'),
              activeColor: Colors.red,
            ),
            BottomBarItem(
              icon: Icon(Icons.settings, size: 35.w),
              title: const Text('Settings'),
              activeColor: Colors.orange,
            ),
            BottomBarItem(
              icon: Icon(Icons.notifications, size: 35.w),
              title: const Text('Notifications'),
              activeColor: Colors.blue,
            ),
          ],
        ),
      );
    });
  }
}

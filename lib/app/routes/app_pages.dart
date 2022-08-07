import 'package:get/get.dart';

import 'package:trippies/app/modules/bottomNavigation/bindings/bottom_navigation_binding.dart';
import 'package:trippies/app/modules/bottomNavigation/views/bottom_navigation_view.dart';
import 'package:trippies/app/modules/confirmBooking/bindings/confirm_booking_binding.dart';
import 'package:trippies/app/modules/confirmBooking/views/confirm_booking_view.dart';
import 'package:trippies/app/modules/favorites/bindings/favorites_binding.dart';
import 'package:trippies/app/modules/favorites/views/favorites_view.dart';
import 'package:trippies/app/modules/home/bindings/home_binding.dart';
import 'package:trippies/app/modules/home/views/home_view.dart';
import 'package:trippies/app/modules/hotelBooking/bindings/hotel_booking_binding.dart';
import 'package:trippies/app/modules/hotelBooking/views/hotel_booking_view.dart';
import 'package:trippies/app/modules/hotels/bindings/hotels_binding.dart';
import 'package:trippies/app/modules/hotels/views/hotels_view.dart';
import 'package:trippies/app/modules/login/bindings/login_binding.dart';
import 'package:trippies/app/modules/login/views/login_view.dart';
import 'package:trippies/app/modules/notifications/bindings/notifications_binding.dart';
import 'package:trippies/app/modules/notifications/views/notifications_view.dart';
import 'package:trippies/app/modules/search/bindings/search_binding.dart';
import 'package:trippies/app/modules/search/views/search_view.dart';
import 'package:trippies/app/modules/settings/bindings/settings_binding.dart';
import 'package:trippies/app/modules/settings/views/settings_view.dart';
import 'package:trippies/app/modules/signup/bindings/signup_binding.dart';
import 'package:trippies/app/modules/signup/views/signup_view.dart';
import 'package:trippies/app/modules/welcome/bindings/welcome_binding.dart';
import 'package:trippies/app/modules/welcome/views/welcome_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.WELCOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.WELCOME,
      page: () => WelcomeView(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOM_NAVIGATION,
      page: () => BottomNavigationView(),
      binding: BottomNavigationBinding(),
    ),
    GetPage(
      name: _Paths.FAVORITES,
      page: () => FavoritesView(),
      binding: FavoritesBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATIONS,
      page: () => NotificationsView(),
      binding: NotificationsBinding(),
    ),
    // GetPage(
    //   name: _Paths.LOCATION_DETAILS,
    //   page: () => LocationDetailsView(),
    //   binding: LocationDetailsBinding(),
    // ),
    GetPage(
      name: _Paths.SEARCH,
      page: () => SearchView(),
      binding: SearchBinding(),
    ),
    GetPage(
      name: _Paths.HOTELS,
      page: () => HotelsView(),
      binding: HotelsBinding(),
    ),
    GetPage(
      name: _Paths.HOTEL_BOOKING,
      page: () => HotelBookingView(),
      binding: HotelBookingBinding(),
    ),
    GetPage(
      name: _Paths.CONFIRM_BOOKING,
      page: () => ConfirmBookingView(),
      binding: ConfirmBookingBinding(),
    ),
  ];
}

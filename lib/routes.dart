import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/data/models/hotel_models.dart';
import 'package:travelapp/representation/screens/details_hotel_screen.dart';
import 'package:travelapp/representation/screens/guest_and_room_booking_screen.dart';
import 'package:travelapp/representation/screens/hotel_booking_screen.dart';
import 'package:travelapp/representation/screens/hotel_screen.dart';
import 'package:travelapp/representation/screens/intro_screen.dart';
import 'package:travelapp/representation/screens/main_app.dart';
import 'package:travelapp/representation/screens/select_date_screen.dart';
import 'package:travelapp/representation/screens/select_room_screen.dart';
import 'package:travelapp/representation/screens/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  IntroScreen.routeName: (context) => const IntroScreen(),
  MainApp.routeName: (context) => const MainApp(),
  HotelScreen.routeName: (context) => const HotelScreen(),
  HotelBookingScreen.routeName: (context) => HotelBookingScreen(),
  SelectDateScreen.routeName: (context) => SelectDateScreen(),
  GuestAndRoomBookingScreen.routeName: (context) =>
      const GuestAndRoomBookingScreen(),
  SelectRoomScreen.routeName: (context) => const SelectRoomScreen(),

};

MaterialPageRoute<dynamic>? generateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case DetailsHotelScreen.routeName:
      final HotelModels hotelModels = (settings.arguments as HotelModels);
      return MaterialPageRoute<dynamic>(
        settings: settings,
        builder: (context) => DetailsHotelScreen(
          hotelModels: hotelModels,
        ),
      );

  };
}

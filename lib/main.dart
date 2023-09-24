import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:hotel_reservation/screen/category_hotel_screen.dart';
import 'package:hotel_reservation/screen/settings/change_pass_screen.dart';
import 'package:hotel_reservation/screen/create_account_screen.dart';
import 'package:hotel_reservation/screen/login_screen.dart';
import 'package:hotel_reservation/screen/p_view.dart';
import 'package:hotel_reservation/screen/settings/edit_profile_screen.dart';
import 'package:hotel_reservation/screen/settings/help_support_screen.dart';
import 'package:hotel_reservation/screen/settings/language_screen.dart';
import 'package:hotel_reservation/screen/settings/notification_screen.dart';
import 'package:hotel_reservation/screen/settings/security_screen.dart';
import 'package:hotel_reservation/screen/settings/setting_screen.dart';
import 'package:hotel_reservation/screen/home/tabs_screen.dart';
import 'package:hotel_reservation/screen/verefication_screen.dart';

import 'dummy_data.dart';
import 'modules/hotel.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  final List<Hotel> _favouriteHotels = [];

  void _toggleFavourite(String hotelId) {
    final existingIndex =
    _favouriteHotels.indexWhere((hotel) => hotel.id == hotelId);

    if (existingIndex >= 0) {
      setState(() {
        _favouriteHotels.removeAt(existingIndex);
      });
    } else {
      setState(() {
        _favouriteHotels.add(
            dummyHotels.firstWhere((hotel) => hotel.id == hotelId));
      });
    }
  }

  bool _isHotelFavourite(String hotelId) {
    return _favouriteHotels.any((hotel) => hotel.id == hotelId);
  }

  final List<Hotel> _availableHotels = dummyHotels;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const PView(),
      //initialRoute: HomeScreen.routeName,
      routes: {
        CreateAccountScreen.routeName: (_) => const CreateAccountScreen(),
        SettingScreen.routeName: (_) => const SettingScreen(),
        Loginscreen.routeName: (_) => const Loginscreen(),
        vereficationscreen.routeName: (_) => const vereficationscreen(),
        TabScreen.routeName: (_) => TabScreen(_favouriteHotels),
        CategoryHotelScreen.routeName: (context) => CategoryHotelScreen(
            _availableHotels, _toggleFavourite, _isHotelFavourite),
      },
    );
  }

}

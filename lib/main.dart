import 'package:flutter/material.dart';
import 'package:hotel_reservation/screen/category_hotel_screen.dart';
import 'package:hotel_reservation/screen/createaccountscreen.dart';
import 'package:hotel_reservation/screen/loginscreen.dart';
import 'package:hotel_reservation/screen/p_view.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:hotel_reservation/screen/home/tabs_screen.dart';
import 'package:hotel_reservation/screen/vereficationscreen.dart';

import 'dummy_data.dart';
import 'modules/hotel.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool? decision = prefs.getBool('x');
  Widget screen =
      (decision == false || decision == null) ? const PView() : const MyApp();

  runApp(screen);
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
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const CreateAccountScreen(),
      //initialRoute: HomeScreen.routeName,
      routes: {
        CreateAccountScreen.routeName: (_) => const CreateAccountScreen(),
        Loginscreen.routeName: (_) => const Loginscreen(),
        vereficationscreen.routeName: (_) => const vereficationscreen(),
        TabScreen.routeName: (_) => TabScreen(_favouriteHotels),
        CategoryHotelScreen.routeName: (context) =>
            CategoryHotelScreen(
                _availableHotels, _toggleFavourite, _isHotelFavourite),
      },
    );
  }
}

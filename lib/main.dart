import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
/*import 'package:hotel_reservation/screen/ainsokhna_hotel_screen.dart';
import 'package:hotel_reservation/screen/alex_hotle_screen.dart';*/
import 'package:hotel_reservation/screen/category_hotel_screen.dart';
import 'package:hotel_reservation/screen/settings/changepassscreen.dart';
import 'package:hotel_reservation/screen/createaccountscreen.dart';
import 'package:hotel_reservation/screen/home/favourite_tab.dart';
import 'package:hotel_reservation/screen/loginscreen.dart';
import 'package:hotel_reservation/screen/p_view.dart';
import 'package:hotel_reservation/screen/settings/helpsupportscreen.dart';
import 'package:hotel_reservation/screen/settings/languagescreen.dart';
import 'package:hotel_reservation/screen/settings/notificationscreen.dart';
import 'package:hotel_reservation/screen/settings/securityscreen.dart';
import 'package:hotel_reservation/screen/settings/settingscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:hotel_reservation/screen/home/tabs_screen.dart';
/*import 'package:hotel_reservation/screen/hurgada_hotel_screen.dart';
import 'package:hotel_reservation/screen/marsamatroh_hotel_screen.dart';
import 'package:hotel_reservation/screen/northcost_hotel_screen.dart';
import 'package:hotel_reservation/screen/sharmelshaikh_hotel_screen.dart';*/
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
        _favouriteHotels
            .add(dummyHotels.firstWhere((hotel) => hotel.id == hotelId));
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
      home: const securityscreen(),
      //initialRoute: HomeScreen.routeName,
      routes: {
        CreateAccountScreen.routeName: (_) => const CreateAccountScreen(),
        notificationscreen.routeName: (_) => const notificationscreen(),
        securityscreen.routeName: (_) => const securityscreen(),
        languagescreen.routeName: (_) => const languagescreen(),
        helpsupportscreen.routeName: (_) => const helpsupportscreen(),
        changepassscreen.routeName: (_) => const changepassscreen(),
        settingscreen.routeName: (_) => const settingscreen(),
        Loginscreen.routeName: (_) => const Loginscreen(),
        vereficationscreen.routeName: (_) => const vereficationscreen(),
        TabScreen.routeName: (_) => TabScreen(_favouriteHotels),
        CategoryHotelScreen.routeName: (context) => CategoryHotelScreen(
            _availableHotels, _toggleFavourite, _isHotelFavourite),

        /* HurgadaHotelScreen.routeName: (_) => HurgadaHotelScreen(),
        SharmElshaikhHotelScreen.routeName: (_) => SharmElshaikhHotelScreen(),
        NorthCostHotelScreen.routeName: (_) => NorthCostHotelScreen(),
        AinSokhnaHotelScreen.routeName: (_) => AinSokhnaHotelScreen(),
        AlexHotelScreen.routeName: (_) => AlexHotelScreen(),
        MarsaMatrohHotelScreen.routeName: (_) => MarsaMatrohHotelScreen(),*/
      },
    );
  }

  EasySplashScreen buildEasySplashScreen() {
    return EasySplashScreen(
      logo: Image.asset("images/b.png"),
      showLoader: true,
      loadingText: const Text("Loading.."),
      navigator: const CreateAccountScreen(),
      durationInSeconds: 4,
      title: const Text(
        "Very easy to book a hotel",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}

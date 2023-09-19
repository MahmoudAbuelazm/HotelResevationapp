import 'package:flutter/material.dart';
import 'package:hotel_reservation/screen/ainsokhna_hotel_screen.dart';
import 'package:hotel_reservation/screen/alex_hotle_screen.dart';
import 'package:hotel_reservation/screen/createaccountscreen.dart';
import 'package:hotel_reservation/screen/home/home_screen.dart';
import 'package:hotel_reservation/screen/hurgada_hotel_screen.dart';
import 'package:hotel_reservation/screen/marsamatroh_hotel_screen.dart';
import 'package:hotel_reservation/screen/northcost_hotel_screen.dart';
import 'package:hotel_reservation/screen/sharmelshaikh_hotel_screen.dart';
import 'package:hotel_reservation/screen/vereficationscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Flutter Demo',
      /*theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),*/
      initialRoute: HomeScreen.routeName,
      routes: {
        CreateAccountScreen.routeName: (_) => CreateAccountScreen(),
        vereficationscreen.routeName: (_) => vereficationscreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
        HurgadaHotelScreen.routeName: (_) => HurgadaHotelScreen(),
        SharmElshaikhHotelScreen.routeName: (_) => SharmElshaikhHotelScreen(),
        NorthCostHotelScreen.routeName: (_) => NorthCostHotelScreen(),
        AinSokhnaHotelScreen.routeName: (_) => AinSokhnaHotelScreen(),
        AlexHotelScreen.routeName: (_) => AlexHotelScreen(),
        MarsaMatrohHotelScreen.routeName: (_) => MarsaMatrohHotelScreen()
      },
    );
  }
}

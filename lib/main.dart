import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:hotel_reservation/screen/ainsokhna_hotel_screen.dart';
import 'package:hotel_reservation/screen/alex_hotle_screen.dart';
import 'package:hotel_reservation/screen/createaccountscreen.dart';
import 'package:hotel_reservation/screen/p_view.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:hotel_reservation/screen/home/home_screen.dart';
import 'package:hotel_reservation/screen/hurgada_hotel_screen.dart';
import 'package:hotel_reservation/screen/marsamatroh_hotel_screen.dart';
import 'package:hotel_reservation/screen/northcost_hotel_screen.dart';
import 'package:hotel_reservation/screen/sharmelshaikh_hotel_screen.dart';
import 'package:hotel_reservation/screen/vereficationscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool? decision = prefs.getBool('x');
  Widget screen = (decision == false || decision == null)? const PView():const MyApp();

  runApp(screen);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      debugShowCheckedModeBanner: false,
      home:  buildEasySplashScreen(),
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
      // title: 'Flutter Demo',
      /*theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: CreateAccountScreen(),*/
    );
  }
  EasySplashScreen buildEasySplashScreen() {
    return EasySplashScreen(
      logo: Image.asset("images/b.png"),
      //logoWidth: 170,
      showLoader: true,
      loadingText: const Text("Loading.."),
      navigator:  const CreateAccountScreen(),
      durationInSeconds: 4,
      title: const Text(
        "Very easy to book a hotel",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
      
}

import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:hotel_reservation/screen/ainsokhna_hotel_screen.dart';
import 'package:hotel_reservation/screen/alex_hotle_screen.dart';
import 'package:hotel_reservation/screen/createaccountscreen.dart';


  runApp(screen);
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
      ),
      home: CreateAccountScreen(),
    );
  }
}

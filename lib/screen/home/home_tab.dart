import 'package:flutter/material.dart';
import 'package:hotel_reservation/screen/ainsokhna_hotel_screen.dart';
import 'package:hotel_reservation/screen/alex_hotle_screen.dart';
import 'package:hotel_reservation/screen/home/category.dart';
import 'package:hotel_reservation/screen/hurgada_hotel_screen.dart';
import 'package:hotel_reservation/screen/marsamatroh_hotel_screen.dart';
import 'package:hotel_reservation/screen/northcost_hotel_screen.dart';
import 'package:hotel_reservation/screen/sharmelshaikh_hotel_screen.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Category> categories = [
      Category(
          'assets/Frame 15.png',
          () {
            Navigator.pushNamed(context, HurgadaHotelScreen.routeName);
          },
          'assets/Frame 16.png',
          () {
            Navigator.pushNamed(context, SharmElshaikhHotelScreen.routeName);
          }),
      Category(
          'assets/Frame 17.png',
          () {
            Navigator.pushNamed(context, NorthCostHotelScreen.routeName);
          },
          'assets/Frame 18.png',
          () {
            Navigator.pushNamed(context, AinSokhnaHotelScreen.routeName);
          }),
      Category(
          'assets/Rectangle 27.png',
          () {
            Navigator.pushNamed(context, AlexHotelScreen.routeName);
          },
          'assets/Rectangle 37.png',
          () {
            Navigator.pushNamed(context, MarsaMatrohHotelScreen.routeName);
          }),
    ];
    return Padding(
      padding: EdgeInsets.only(top: 50, left: 15, right: 15),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                child: Image.asset('assets/Ellipse 8.jpg'),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome Aadam',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 12, horizontal: 5),
                          prefixIcon: Icon(
                            Icons.search,
                            size: 38,
                          ),
                          hintText: 'Search',
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35)))),
                    )
                  ],
                ),
              )
            ],
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return categories[index];
                  })),
        ],
      ),
    );
  }
}

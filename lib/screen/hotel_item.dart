import 'package:flutter/material.dart';
import 'package:hotel_reservation/dummy_data.dart';
import 'package:hotel_reservation/screen/home/category_screen.dart';

import '../modules/hotel.dart';
import 'home/favourite_tab.dart';

class HotelItem extends StatefulWidget {
  final String id;
  final String imgUrl;
  final String title;
  final String price;
  final String rating;
  final String numRating;





  const HotelItem(

      {
    super.key,
    required this.id,
    required this.imgUrl,
    required this.title,
    required this.price,
    required this.rating,
    required this.numRating,
  });

  @override
  State<HotelItem> createState() => _HotelItemState();
}

class _HotelItemState extends State<HotelItem> {
  bool isLiked = false;
/*
  final List<Hotel> _favouriteHotel = [];

  void _toggleFavourite(String hotelId) {
    final existingIndex =
    _favouriteHotel.indexWhere((hotel) => hotel.id == hotelId);

    if (existingIndex >= 0) {
      setState(() {
        _favouriteHotel.removeAt(existingIndex);
      });
    } else {
      setState(() {
        _favouriteHotel.add(dummyHotels.firstWhere((hotel) => hotel.id == hotelId));
      });
    }
  }

  bool _isMealFavourite(String hotelId) {
    return _favouriteHotel.any((hotel) => hotel.id == hotelId);
  }*/
  @override
  Widget build(BuildContext context) {
    //final hotelId = ModalRoute.of(context)?.settings.arguments as String;
    return Padding(
      padding: const EdgeInsets.only(bottom: 55.0,left: 22,right: 22),
      child: Container(
        height: 450,
        width: 350,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
            color: Color.fromRGBO(226, 246, 245, 1)),
        child: Stack(
          children: [
            Image.asset(widget.imgUrl),

            Positioned(
              top: 300,
              left: 17,
              child: Row(
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    width: 100.0,
                  ),
                  Image.asset('assets/Frame 44.png')
                ],
              ),
            ),
            Positioned(
              top: 330,
              left: 40,
              child: Column(
                children: [
                  Text(
                    widget.rating,
                    style: const TextStyle(fontSize: 12),
                  ),
                  Text(
                    widget.numRating,
                    style: const TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
            Positioned(
                top: 375,
                left: 45,
                child: Row(
                  children: [
                    const Icon(
                      Icons.shopping_cart_outlined,
                      size: 36,
                    ),
                    const SizedBox(
                      width: 135,
                    ),
                    Column(
                      children: [
                        const Text(
                          'Price started from',
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          widget.price,
                          style: const TextStyle(fontSize: 14),
                        ),
                        const Text(
                          'for every night',
                          style: TextStyle(fontSize: 14),
                        )
                      ],
                    )
                  ],
                ),
            ),

          ],
        ),
      ),
    );
  }
}
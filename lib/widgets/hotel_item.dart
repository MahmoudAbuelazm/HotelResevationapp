import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_reservation/screen/from_detail_screen.dart';

class HotelItem extends StatefulWidget {
  final String id;
  final String imgUrl;
  final String title;
  final String price;
  final String rating;
  final String numRating;

  const HotelItem({
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
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        height: height * 0.55,
        width: width * 0.9,
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
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: width * 0.15,
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
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    widget.numRating,
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: 375,
              left: 45,
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.shopping_cart_outlined, size: 36),
                    onPressed: () {
                      Navigator.pushNamed(context, DetailScreen.routeName);
                    },
                  ),
                  SizedBox(
                    width: width * 0.3,
                  ),
                  Column(
                    children: [
                      Text(
                        'Price started from',
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        widget.price,
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'for every night',
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
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

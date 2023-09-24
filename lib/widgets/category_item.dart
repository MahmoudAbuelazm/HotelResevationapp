import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screen/category_hotel_screen.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.id,
    required this.title,
    required this.imgUrl,
  });

  final String id;
  final String title;
  final String imgUrl;

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(CategoryHotelScreen.routeName,
        arguments: {'id': id, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () {
        selectCategory(context);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Stack(
          children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              imgUrl,
              width: width * 0.45,
              height: height * 0.6,
              fit: BoxFit.cover,
            ),
          ),
          Center(
              child: Text(
            title,
            style: GoogleFonts.inter(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          )),
        ]
        ),
      ),
    );
  }
}

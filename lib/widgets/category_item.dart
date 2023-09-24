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
    return InkWell(
      borderRadius: BorderRadius.circular(60),
      onTap: () {
        selectCategory(context);
      },
      child: Stack(children: [
        SizedBox(
          width: 300,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              imgUrl,
              width: 250,
              height: 350,
            ),
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
      ]),
    );
  }
}

import 'package:flutter/material.dart';

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
      borderRadius: BorderRadius.circular(20),
      onTap: () {
        selectCategory(context);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Image.asset(
          imgUrl,
          width: 300,
          height: 440,
        ),
      ),
    );
  }
}

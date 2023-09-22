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
      child: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              imgUrl,
            ),
          ),
          /*Positioned(
            left: 10,
            top: 10,
            child: Container(
              padding: const EdgeInsets.all(5),
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ),*/
        ],
      ),
    );
  }
}

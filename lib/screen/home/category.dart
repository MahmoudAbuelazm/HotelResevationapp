import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  String image1Path;
  String image2Path;
  Category(this.image1Path,this.image2Path);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(15.0),
                )),
            padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
            child: Image.asset('$image1Path'),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(15.0),
                )),
            padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
            child: Image.asset('$image2Path'),
          ),
        )
      ],
    );
  }
}

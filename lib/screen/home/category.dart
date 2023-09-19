import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  String image1Path;
  Function onTap1;
  String image2Path;
  Function onTap2;
  Category(this.image1Path, this.onTap1, this.image2Path, this.onTap2);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              onTap1();
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              )),
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
              child: Image.asset('$image1Path'),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              onTap2();
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              )),
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
              child: Image.asset('$image2Path'),
            ),
          ),
        )
      ],
    );
  }
}

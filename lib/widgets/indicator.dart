import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  final int index;

  const Indicator(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        buildContainer(0),
        buildContainer(1),
        buildContainer(2),
      ],
    );
  }

  StatelessWidget buildContainer(int i) {
    return Container(
      margin: const EdgeInsets.all(4),
      height: 8,
      width: 8,
      decoration: BoxDecoration(
          color:
              index == i ? const Color.fromRGBO(6, 177, 166, 1) : Colors.grey,
          shape: BoxShape.circle),
    );
  }
}

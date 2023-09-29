import 'package:flutter/material.dart';

class FromDetailRow extends StatefulWidget {
  bool isChecked;
  String text1;
  String text2;
  FromDetailRow(this.isChecked,this.text1,this.text2);

  @override
  State<FromDetailRow> createState() => _FromDetailRowState();
}

class _FromDetailRowState extends State<FromDetailRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          checkColor: Colors.white,
          value: widget.isChecked,
          shape: RoundedRectangleBorder(),
          onChanged: (bool? value) {
            setState(() {
              widget.isChecked = value!;
            });
          },
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          activeColor: Color(0xff06B1A6),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.text1),
            Text(widget.text2)
          ],
        )
      ],
    );
  }
}

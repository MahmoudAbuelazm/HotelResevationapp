import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FromDetailRow extends StatefulWidget {
   bool isChecked;
  final String text1;
  final String text2;
   FromDetailRow(this.isChecked,this.text1,this.text2, {super.key});

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
          shape: const RoundedRectangleBorder(),
          onChanged: (bool? value) {
            setState(() {
              widget.isChecked = value!;
            });
          },
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          activeColor: const Color(0xff06B1A6),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.text1,style: GoogleFonts.inter(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),),
            Text(widget.text2,style: GoogleFonts.inter(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),)
          ],
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LangContainer extends StatelessWidget {
  const LangContainer({
    super.key,
    required this.width,
    required this.height,
    required this.image,
    required this.text,
    required this.w,
    required this.h,
  });

  final double width;
  final double height;
  final String image;
  final String text;
  final double w;
  final double h;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.9,
      height: height * 0.08,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(18),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              image,
              height: 55,
            ),
            SizedBox(
              width: width * 0.05,
            ),
            Text(
              text,
              style: GoogleFonts.inter(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: width * 0.29,
            ),
            Image.asset(
              'images/icon-park-outline_correct.png',
              width: w,
              height: h,
            ),
          ],
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class langcontainer extends StatelessWidget {
  const langcontainer({
    super.key,
    required this.width,
    required this.height,
    required this.image,
    required this.text,
  });

  final double width;
  final double height;
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.9,
      height: height * 0.08,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xff067F77),
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
              width: width * 0.35,
            ),
          ],
        ),
      ),
    );
  }
}

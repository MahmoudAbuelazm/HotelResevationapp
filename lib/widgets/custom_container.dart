import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.width,
    required this.height,
    required this.icon1,
    required this.text,
    required this.icon2,
    required this.color,
    
  });

  final double width;
  final double height;
  final Icon icon1;
  final String text;
  final Icon icon2;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      elevation: 3,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Colors.black.withOpacity(0.75)),
        ),
        width: width * 0.9,
        height: height * 0.06,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              icon1,
              SizedBox(
                width: width * 0.05,
              ),
              Text(
                text,
                style: GoogleFonts.inter(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: color,
                ),
              ),
              const Spacer(),
              icon2
            ],
          ),
        ),
      ),
    );
  }
}

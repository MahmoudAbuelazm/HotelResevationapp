import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Loginscreen extends StatelessWidget {
  static const String routeName = 'Login Screen';
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: height * 0.1,
        
        ),
        Text(
                "Login Account",
                style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Please login with registered account",
                style: GoogleFonts.inter(
                  fontSize: 14,
                  color: Color(0xff067F77),
                ),

              ),
              SizedBox(
                height: 20,
              ),
      ]),
    );
  }
}

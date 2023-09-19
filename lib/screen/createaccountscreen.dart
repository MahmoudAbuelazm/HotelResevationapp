import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAccountScreen extends StatelessWidget {
  static const String routeName = 'Create acc. Screen';
  const CreateAccountScreen({super.key});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: width,
          height: height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Create Account",
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
                "Start learning with create your account",
                style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff067F77),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Username",
                style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                
                decoration: InputDecoration(
                  prefixIcon: Image.asset(
                    "images/mdi.png",
                    height: 20,
                  ),
                  hintText: "Enter your email or phone number",
                  hintStyle: GoogleFonts.inter(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff06B1A6).withOpacity(.44),
                  ),
                  fillColor: Color(0xff06B1A6).withOpacity(0.06),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Text(
              "Password",
              style: GoogleFonts.inter(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              elevation: 10,
              shadowColor: Colors.black,
              child: TextFormField(
                style: GoogleFonts.inter(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff06B1A6),
                ),
                decoration: InputDecoration(
                  suffixIcon: Image.asset(
                    "images/eye.png",
                    height: 20,
                  ),
                  prefixIcon: Image.asset(
                    "images/material.png",
                    height: 20,
                  ),
                  hintText: "create your password",
                  hintStyle: GoogleFonts.inter(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff067F77),
                  ),
                  fillColor: Color(0xff06B1A6).withOpacity(0.06),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Color(0xff067F77),
                      width: 2,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: height * 0.1,
          ),
          Text(
            "Login Account",
            style: GoogleFonts.inter(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Please login with registered account",
            style: GoogleFonts.inter(
              fontSize: 14,
              color: Color(0xff067F77),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Email or Phone Number",
            style: GoogleFonts.inter(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: height * 0.005,
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 5,
            shadowColor: Colors.black,
            child: TextFormField(
              style: GoogleFonts.inter(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
              decoration: InputDecoration(
                prefixIcon: Image.asset(
                  "images/mdi.png",
                  height: 20,
                ),
                hintText: "Enter your email or phone number",
                hintStyle: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff06B1A6),
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
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 5,
            shadowColor: Colors.black,
            child: TextFormField(
              style: GoogleFonts.inter(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
              decoration: InputDecoration(
                suffixIcon: Image.asset(
                  "images/ph_eye.png",
                  height: 20,
                ),
                prefixIcon: Image.asset(
                  "images/symbol.png",
                  height: 20,
                ),
                hintText: "create your password",
                hintStyle: GoogleFonts.inter(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff06B1A6),
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
            height: height * 0.00001,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  "Forget Password?",
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff06B1A6),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.03,
          ),
          GestureDetector(
            onTap: () => _openModalSheet(context),
            child: Container(
              width: width,
              height: height * 0.07,
              child: Center(
                  child: Text("sign in",
                      style: GoogleFonts.inter(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white))),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xff06B1A6),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Center(
            child: TextButton(
                onPressed: () {},
                child: Text("Or Using other method",
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff06B1A6),
                    ))),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image.asset(
                    "images/google.png",
                    height: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("sign in with Google",
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ))
                ]),
                width: width,
                height: height * 0.05,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black.withOpacity(0.1)),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.transparent,
                )),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          GestureDetector(
            child: Container(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image.asset(
                    "images/facebook.png",
                    height: 25,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("sign in with Facebook",
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ))
                ]),
                width: width,
                height: height * 0.05,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black.withOpacity(0.1)),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.transparent,
                )),
          )
        ]),
      ),
    );
  }
}

void _openModalSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true, // Allows content to scroll within the modal
    builder: (BuildContext context) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text("Forget Password",
                style: GoogleFonts.inter(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                )),
            const SizedBox(height: 5),
            Text(
              "Enter your mail or phone number",
              style: GoogleFonts.inter(
                fontSize: 15,
                color: Color(0xff06B1A6),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Email or Phone Number",
              style: GoogleFonts.inter(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 5),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 5,
              shadowColor: Colors.black,
              child: TextFormField(
                style: GoogleFonts.inter(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  prefixIcon: Image.asset(
                    "images/mdi.png",
                    height: 10,
                  ),
                  hintText: "Enter your email",
                  hintStyle: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff06B1A6),
                  ),
                  fillColor: Color(0xff06B1A6).withOpacity(0.06),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 5,
              shadowColor: Colors.black,
              child: TextFormField(
                style: GoogleFonts.inter(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  prefixIcon: Image.asset(
                    "images/ic_baseline-phone-iphone.png",
                    height: 10,
                  ),
                  hintText: "Enter phone number",
                  hintStyle: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff06B1A6),
                  ),
                  fillColor: Color(0xff06B1A6).withOpacity(0.06),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
                _openModalSheetagain(context);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: Center(
                      child: Text("Sende Code",
                          style: GoogleFonts.inter(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white))),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color(0xff06B1A6),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      );
    },
  );
}

void _openModalSheetagain(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true, // Allows content to scroll within the modal
    builder: (BuildContext context) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text("Create New Password",
                style: GoogleFonts.inter(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                )),
            const SizedBox(height: 5),
            Text(
              "Enter your mail or phone number",
              style: GoogleFonts.inter(
                fontSize: 15,
                color: Color(0xff06B1A6),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Password",
              style: GoogleFonts.inter(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 5),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 5,
              shadowColor: Colors.black,
              child: TextFormField(
                style: GoogleFonts.inter(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  suffixIcon: Image.asset(
                    "images/ph_eye.png",
                    height: 20,
                  ),
                  prefixIcon: Image.asset(
                    "images/symbol.png",
                    height: 20,
                  ),
                  hintText: "create your password",
                  hintStyle: GoogleFonts.inter(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff06B1A6),
                  ),
                  fillColor: Color(0xff06B1A6).withOpacity(0.06),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Password",
              style: GoogleFonts.inter(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 5),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 5,
              shadowColor: Colors.black,
              child: TextFormField(
                obscureText: true,
                obscuringCharacter: "*",
                style: GoogleFonts.inter(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
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
                  hintText: "again your new password",
                  hintStyle: GoogleFonts.inter(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff06B1A6),
                  ),
                  fillColor: Color(0xff06B1A6).withOpacity(0.06),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () => _openModalSheet(context),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: Center(
                      child: Text("Change Password",
                          style: GoogleFonts.inter(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white))),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color(0xff06B1A6),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      );
    },
  );
}

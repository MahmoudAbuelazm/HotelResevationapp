import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class vereficationscreen extends StatelessWidget {
  static const String routeName = 'Verification Screen';
  const vereficationscreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset:
          false, // this is to avoid the overflow error when keyboard appears
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Image.asset(
            'images/ArrowLeft.png',
            width: 25,
          ),
        ),
        title: Center(
          child: Text(
            "Verification",
            style: GoogleFonts.inter(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          SizedBox(
            width: 45,
          ),
        ],
        elevation: 0.0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: height * 0.1,
          ),
          CircleAvatar(
            radius: 65,
            backgroundColor: Color(0xff06B1A6),
            child: CircleAvatar(
              radius: 50,
              child: Image.asset(
                'images/EnvelopeSimpleOpen.png',
              ),
              backgroundColor: Color(0xff07E9DA),
            ),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Text("Verification Code",
              style: GoogleFonts.inter(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              )),
          SizedBox(height: height * 0.04),
          Text(
            "We have sent the code verification to ",
            style: GoogleFonts.inter(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          SizedBox(height: height * 0.02),
          Text(
            "amira22@gmail.com",
            style: GoogleFonts.inter(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          SizedBox(height: height * 0.05),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Pinput(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              length: 4,
              defaultPinTheme: defaultPinTheme,
            ),
          ),
          SizedBox(height: height * 0.06),
          GestureDetector(
            onTap: () => _openModalSheet(context),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: width,
                height: height * 0.06,
                child: Center(
                    child: Text("Submit",
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
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Didn't receive the code?",
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(.5),
                  )),
              TextButton(
                  onPressed: () {},
                  child: Text("Resend",
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff06B1A6),
                      ))),
            ],
          )
        ],
      ),
    );
  }
}

final defaultPinTheme = PinTheme(
  width: 40,
  height: 50,
  textStyle:
      TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
  decoration: BoxDecoration(
    border: Border.all(color: Color(0xff06B1A6)),
    borderRadius: BorderRadius.circular(20),
  ),
);

void _openModalSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true, // Allows content to scroll within the modal
    builder: (BuildContext context) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 40),
          CircleAvatar(
            radius: 65,
            backgroundColor: Color(0xffD9D9D9),
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Color(0xff319F43),
              child: CircleAvatar(
                radius: 24,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  backgroundColor: Color(0xff319F43),
                  radius: 20,
                  child: Image.asset(
                    'images/Vector.png',
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Text("Register Success",
              style: GoogleFonts.inter(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              )),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Text(
              "congratulaions! Your account already created. please login to get amazing experience.",
              style: GoogleFonts.inter(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () => _openModalSheet(context),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.06,
                child: Center(
                    child: Text("go to HomePage",
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
      );
    },
  );
}

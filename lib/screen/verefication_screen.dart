import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

import 'p_view.dart';

class VerificationScreen extends StatelessWidget {
  static const String routeName = 'Verification Screen';

  const VerificationScreen({super.key});

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
        actions: const [
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
            backgroundColor: const Color(0xff06B1A6),
            child: CircleAvatar(
              radius: 50,
              backgroundColor: const Color(0xff07E9DA),
              child: Image.asset(
                'images/EnvelopeSimpleOpen.png',
              ),
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
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              backgroundColor: const Color(0xff06B1A6),
            ),
            onPressed: () => _openModalSheet(context),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
              child: Center(
                child: Text(
                  "Submit",
                  style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
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
                        color: const Color(0xff06B1A6),
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
  textStyle: const TextStyle(
      fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
  decoration: BoxDecoration(
    border: Border.all(color: const Color(0xff06B1A6)),
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
          const SizedBox(height: 40),
          CircleAvatar(
            radius: 65,
            backgroundColor: const Color(0xffD9D9D9),
            child: CircleAvatar(
              radius: 50,
              backgroundColor: const Color(0xff319F43),
              child: CircleAvatar(
                radius: 24,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  backgroundColor: const Color(0xff319F43),
                  radius: 20,
                  child: Image.asset(
                    'images/Vector.png',
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text("Register Success",
              style: GoogleFonts.inter(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              )),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Text(
              "congratulations! Your account already created.",
              style: GoogleFonts.inter(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Text(
              "please login to get amazing experience.",
              style: GoogleFonts.inter(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              backgroundColor: const Color(0xff06B1A6),
            ),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PView()),
            ),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
              child: Center(
                child: Text(
                  "go to HomePage",
                  style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(height: 60),
        ],
      );
    },
  );
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_reservation/widgets/langcontainer.dart';

class languagescreen extends StatelessWidget {
  static const String routeName = 'languagescreen';
  const languagescreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Language',
              style: GoogleFonts.inter(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.black)),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset('images/ep_back.png')),
        actions: [Image.asset('images/charm_menu-kebab.png')],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.05,
            ),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Image.asset('images/carbon_search.png'),
                hintText: ' Search Language',
                hintStyle: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff067F77),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Container(
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
                padding: const EdgeInsets.only(left: 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/english.png',
                      height: 55,
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    Text(
                      'English',
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: width * 0.35,
                    ),
                    Image.asset('images/icon-park-outline_correct.png'),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.015,
            ),
            langcontainer(
              width: width,
              height: height,
              image: 'images/egypt.png',
              text: 'Arabic',
            ),
            SizedBox(
              height: height * 0.015,
            ),
            langcontainer(
              width: width,
              height: height,
              image: 'images/Ellipse 9.png',
              text: 'Chinese',
            ),
            SizedBox(
              height: height * 0.015,
            ),
            langcontainer(
              width: width,
              height: height,
              image: 'images/Ellipse 9 (1).png',
              text: 'Deutsch',
            ),
          ],
        ),
      ),
    );
  }
}

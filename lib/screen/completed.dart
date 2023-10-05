import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_reservation/screen/home/tabs_screen.dart';

class Completed extends StatelessWidget {
  static const String routeName = 'CompletedScreen';

  const Completed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            size: 33,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset("images/p3.png"),
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            "Payment Complete",
            style: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            "Etaim cras nec metus laoreet.Faucibus iaculis cras ut posuere",
            style: GoogleFonts.inter(fontSize: 20),
            textAlign: TextAlign.center,
          ),

          Padding(
            padding: const EdgeInsets.only(top: 70.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: ()=>Navigator.of(context).pop(),
                  child: Container(
                    width: 350,
                    height: 48,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: const Color(0xff06B1A6)),
                    child:  Center(
                      child: Text(
                        'View Hotel Booking',
                        style: GoogleFonts.inter(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(
                      TabScreen.routeName,
                    );
                  },
                  child: Container(
                    width: 350,
                    height: 48,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(color: const Color(0xff06B1A6))
                        ),
                    child:  Center(
                      child: Text(
                        'Close',
                        style: GoogleFonts.inter(
                          fontSize: 20,
                            color: const Color(0xff06B1A6)
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}

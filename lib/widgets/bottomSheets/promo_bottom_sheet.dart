import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_reservation/widgets/bottomSheets/payment_bottom_sheet.dart';

class Promo extends StatefulWidget {
  const Promo({super.key});

  @override
  State<Promo> createState() => _PromoState();
}

class _PromoState extends State<Promo> {
  bool isSelected = false;
  bool isSelected2 = false;
  bool isSelected3 = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
      height: height*0.5,
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 6,
            width: width * 0.2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.grey),
          ),
          const SizedBox(
            height: 8,
          ),
          Center(
            child: Text(
              'Select Promo',
              style: GoogleFonts.inter(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
           SizedBox(
            height: height*0.02,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isSelected = !isSelected;
              });
            },
            child: buildContainer(
                "35%",
                "Expired in 2days",
                isSelected
                    ? const Color.fromRGBO(6, 177, 166, 1)
                    : Colors.white,
                isSelected? const Icon(Icons.done_outline,size: 30,color: Colors.black,) : Container()),
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isSelected2 = !isSelected2;
              });
            },
            child: buildContainer(
                "18%",
                "Expired in 1days",
                isSelected2
                    ? const Color.fromRGBO(6, 177, 166, 1)
                    : Colors.white,
                isSelected2? const Icon(Icons.done_outline,size: 30,color: Colors.black,) : Container()),
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isSelected3 = !isSelected3;
              });
            },
            child: buildContainer(
                "15%",
                "Expired in 1days",
                isSelected3
                    ? const Color.fromRGBO(6, 177, 166, 1)
                    : Colors.white,
              isSelected3? const Icon(Icons.done_outline,size: 30,color: Colors.black,) : Container()
            ),
          ),
           SizedBox(
            height: height *0.03,
          ),
          InkWell(
            onTap: (){
              Navigator.of(context).pop();
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return const Payment();
                  });
            },
            child: Container(
              alignment: Alignment.center,
              height: height*0.065,
              width: width*0.6,
              decoration: BoxDecoration(
                  color: const Color(0xff06B1A6),
                  borderRadius: BorderRadius.circular(25.0)),
              child: Text(
                'Select',
                style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container buildContainer(String discount, String expire, Color clr,Widget w) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: clr)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  discount,
                  style:
                      GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                w
              ],
            ),
            Row(
              children: <Widget>[
                Text(expire,
                    style: GoogleFonts.inter(
                        fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(
                  width: 15,
                ),
                Text("See Details",
                    style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromRGBO(6, 177, 166, 1)))
              ],
            )
          ],
        ),
      ),
    );
  }
}

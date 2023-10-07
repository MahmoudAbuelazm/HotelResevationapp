import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../screen/add_new_card.dart';
import '../../screen/completed.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  bool isChecked = false;
  bool isChecked2 = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: 450,
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              height: 6,
              width: width * 0.3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.grey),
            ),
          ),
           SizedBox(
            height: height * 0.02,
          ),
          Text(
            'Payment Method',
            style: GoogleFonts.inter(
                fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),
          ),
           SizedBox(
            height: height * 0.035,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: const Color.fromRGBO(6, 177, 166, 1),
              ),
            ),
            child: Row(
              children: [
                Image.asset("images/p1.png"),
                 SizedBox(
                  width: width *0.02,
                ),
                Text(
                  'PayPal',
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold, fontSize: 22),
                ),
                 SizedBox(
                  width: width*0.5,
                ),
                Checkbox(
                  checkColor: Colors.white,
                  value: isChecked,
                  shape: const RoundedRectangleBorder(),
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  activeColor: const Color(0xff06B1A6),
                ),
              ],
            ),
          ),
           SizedBox(
            height: height*0.03,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: const Color.fromRGBO(6, 177, 166, 1),
              ),
            ),
            child: Row(
              children: [
                Image.asset("images/p2.png"),
                 SizedBox(
                  width: width *0.02,
                ),
                Text(
                  'MasterCard',
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold, fontSize: 22),
                ),
                 SizedBox(
                  width: width * 0.38,
                ),
                Checkbox(
                  checkColor: Colors.white,
                  value: isChecked2,
                  shape: const RoundedRectangleBorder(),
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked2 = value!;
                    });
                  },
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  activeColor: const Color(0xff06B1A6),
                ),
              ],
            ),
          ),
           SizedBox(
            height: height*0.03,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(
                NewCard.routeName,
              );
            },
            child: Row(
              children: <Widget>[
                const Icon(
                  Icons.add_circle_outline_sharp,
                  size: 28,
                  color: Color(0xff06B1A6),
                ),
                 SizedBox(
                  width: width * 0.02,
                ),
                Text(
                  "Add Payment Method",
                  style: GoogleFonts.inter(
                      fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
           SizedBox(
            height: height*0.03,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(
                Completed.routeName,
              );
            },
            child: Center(
              child: Container(
                alignment: Alignment.center,
                height: height*0.06,
                width: width*0.6,
                decoration: BoxDecoration(
                    color: const Color(0xff06B1A6),
                    borderRadius: BorderRadius.circular(25.0)),
                child: Text(
                  'Confirm Payment',
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

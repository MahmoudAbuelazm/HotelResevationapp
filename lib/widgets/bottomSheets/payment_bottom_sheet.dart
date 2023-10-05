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
    return Container(
      height: 450,
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              height: 6,
              width: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.grey),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Payment Method',
            style: GoogleFonts.inter(
                fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),
          ),
          const SizedBox(
            height: 40,
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
                const SizedBox(
                  width: 20,
                ),
                Text(
                  'PayPal',
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold, fontSize: 22),
                ),
                const SizedBox(
                  width: 200,
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
          const SizedBox(
            height: 25.0,
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
                const SizedBox(
                  width: 20,
                ),
                Text(
                  'MasterCard',
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold, fontSize: 22),
                ),
                const SizedBox(
                  width: 150,
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
          const SizedBox(
            height: 30.0,
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
                const SizedBox(
                  width: 19,
                ),
                Text(
                  "Add Payment Method",
                  style: GoogleFonts.inter(
                      fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30.0,
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
                height: 50.0,
                width: 250,
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

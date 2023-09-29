import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_reservation/widgets/bottomSheets/date_bottomsheet.dart';
import 'package:hotel_reservation/widgets/bottomSheets/roomtype_bottomsheet.dart';
import 'package:hotel_reservation/widgets/from_detail_row.dart';
import 'package:hotel_reservation/widgets/bottomSheets/guests_bottomsheet.dart';

class DetailScreen extends StatefulWidget {
  static const String routeName = 'DetailScreen';

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(
              width: 80,
            ),
            Text(
              'From Detail',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30.0,
            ),
            Text(
              'Dates',
              style: TextStyle(
                  fontSize: 19,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return DateBottomSheet();
                    });
              },
              child: TextFormField(
                enabled: false,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.calendar_month),
                    suffixIcon: Icon(
                      Icons.keyboard_arrow_down,
                      size: 28,
                      color: Colors.black,
                    ),
                    hintText: 'Select Date ',
                    hintStyle: TextStyle(color: Color(0xff067F77)),
                    contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide.none),
                    fillColor: Color(0xffF0E8E8),
                    filled: true),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Guests',
              style: TextStyle(
                  fontSize: 19,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return GuestsBottomSheet();
                    });
              },
              child: TextFormField(
                enabled: false,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.perm_identity_rounded),
                    suffixIcon: InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.keyboard_arrow_down,
                          size: 28,
                          color: Colors.black,
                        )),
                    hintText: 'Select number of guests',
                    hintStyle: TextStyle(color: Color(0xff067F77)),
                    contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide.none),
                    fillColor: Color(0xffF0E8E8),
                    filled: true),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Room type',
              style: TextStyle(
                  fontSize: 19,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            InkWell(
              onTap: (){
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return RoomTypeBottomSheet();
                    });
              },
              child: TextFormField(
                enabled: false,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.door_back_door_outlined),
                    suffixIcon: InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.keyboard_arrow_down,
                          size: 28,
                          color: Colors.black,
                        )),
                    hintText: 'Select room type ',
                    hintStyle: TextStyle(color: Color(0xff067F77)),
                    contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide.none),
                    fillColor: Color(0xffF0E8E8),
                    filled: true),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Number phone',
              style: TextStyle(
                  fontSize: 19,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone_outlined),
                  hintText: 'Your phone number ',
                  hintStyle: TextStyle(color: Color(0xff067F77)),
                  contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide.none),
                  fillColor: Color(0xffF0E8E8),
                  filled: true),
            ),
            SizedBox(
              height: 22,
            ),
            FromDetailRow(isChecked1, 'Keep me updated on more hotels and news',
                'from this app'),
            SizedBox(
              height: 12,
            ),
            FromDetailRow(isChecked2, 'send me emails about hotel nearby or ',
                'discount'),
            SizedBox(
              height: 12,
            ),
            FromDetailRow(
                isChecked3,
                'I accept the app terms of services,community',
                'guidelines and privecy policy'),
            SizedBox(
              height: 50.0,
            ),
            Container(
              width: double.infinity,
              height: 48,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color(0xff06B1A6)),
              child: Center(
                child: Text(
                  'Continue',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

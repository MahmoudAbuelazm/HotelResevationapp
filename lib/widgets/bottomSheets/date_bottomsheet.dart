import 'package:flutter/material.dart';

class DateBottomSheet extends StatefulWidget {
  @override
  State<DateBottomSheet> createState() => _DateBottomSheetState();
}

class _DateBottomSheetState extends State<DateBottomSheet> {
  var formKey = GlobalKey<FormState>();
  int day1 = DateTime.now().day;
  DateTime day2 = DateTime.now().add(Duration(days: 365));
  int month = DateTime.now().month;
  int year = DateTime.now().year;
  var day1Controller=TextEditingController();
  var day2Controller=TextEditingController();
  var monthController=TextEditingController();
  var yearController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 8,
            ),
            /* Container(
              width: 80,
              height: 8,
             decoration: BoxDecoration(
               color: Colors.black,
               borderRadius: BorderRadius.circular(15)
             ),
            ),
            */
            Center(
              child: Text(
                'Select Date',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Date',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.black,
              ),
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: 5.0,
            ),
            TextFormField(
              controller: day1Controller,
              decoration: InputDecoration(
                hintText: 'From day',
                hintStyle: TextStyle(
                  color: Color(0xff06B1A6),
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: .0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0)),
                fillColor: Colors.transparent,
                filled: true,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            TextFormField(
              controller: day2Controller,
              decoration: InputDecoration(
                hintText: 'To day',
                hintStyle: TextStyle(
                  color: Color(0xff06B1A6),
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: .0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0)),
                fillColor: Colors.transparent,
                filled: true,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            TextFormField(
              controller: monthController,
              decoration: InputDecoration(
                hintText: 'The month',
                hintStyle: TextStyle(
                  color: Color(0xff06B1A6),
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                fillColor: Colors.transparent,
                filled: true,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            TextFormField(
              controller: yearController,
              decoration: InputDecoration(
                hintText: 'The year',
                hintStyle: TextStyle(
                  color: Color(0xff06B1A6),
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                fillColor: Colors.transparent,
                filled: true,
              ),
            ),
            SizedBox(
              height: 55.0,
            ),
            InkWell(
              onTap: () {
              // save data in variables بس مش عارفه
              },
              child: Container(
                alignment: Alignment.center,
                height: 50.0,
                decoration: BoxDecoration(
                    color: Color(0xff06B1A6),
                    borderRadius: BorderRadius.circular(25.0)),
                child: Text(
                  'Save',
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

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class DateBottomSheet extends StatefulWidget {
  const DateBottomSheet({super.key});

  static String selectedDate = "Select Date";

  @override
  State<DateBottomSheet> createState() => _DateBottomSheetState();
}

class _DateBottomSheetState extends State<DateBottomSheet> {
  DateTime? _selectedDate = DateTime.now();

  void _datePicker(BuildContext context) {
    showDatePicker(
      context: context,
      initialDate: DateTime.utc(2002, 9, 22),
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    ).then((value) {
      if (value == null) {
        return;
      }

      setState(() {
        _selectedDate = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
      height: height * 0.53,
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 6,
            width: width * 0.2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.black),
          ),
          const SizedBox(
            height: 8,
          ),
          Center(
            child: Text(
              'Select Date',
              style: GoogleFonts.inter(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
           SizedBox(
            height: height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Date',
                style: GoogleFonts.inter(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                textAlign: TextAlign.start,
              ),
              IconButton(
                icon: const Icon(
                  Icons.calendar_today_outlined,
                  size: 23,
                  color: Color(0xff067F77),
                ),
                onPressed: () => _datePicker(context),
              ),
            ],
          ),
           SizedBox(
            height: height * 0.02,
          ),
          TextFormField(
            enabled: false,
            decoration: InputDecoration(
              hintText: "The Day: ${DateFormat.d().format(_selectedDate!)}",
              hintStyle: GoogleFonts.inter(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: const Color(0xff067F77),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 15.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
              fillColor: Colors.transparent,
              filled: true,
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          TextFormField(
            enabled: false,
            decoration: InputDecoration(
              hintText: 'The month: ${DateFormat.M().format(_selectedDate!)}',
              hintStyle: GoogleFonts.inter(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: const Color(0xff067F77),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 15.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              fillColor: Colors.transparent,
              filled: true,
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          TextFormField(
            enabled: false,
            decoration: InputDecoration(
              hintText: 'The year: ${DateFormat.y().format(_selectedDate!)}',
              hintStyle: GoogleFonts.inter(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: const Color(0xff067F77),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 15.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              fillColor: Colors.transparent,
              filled: true,
            ),
          ),
           SizedBox(
            height: height * 0.03,
          ),
          InkWell(
            onTap: () {
              setState(() {
                DateBottomSheet.selectedDate =
                    DateFormat.yMMMd().format(_selectedDate!);
                Navigator.of(context).pop();
              });
            },
            child: Container(
              alignment: Alignment.center,
              height: height * 0.06,
              decoration: BoxDecoration(
                  color: const Color(0xff06B1A6),
                  borderRadius: BorderRadius.circular(25.0)),
              child: Text(
                'Save',
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
}

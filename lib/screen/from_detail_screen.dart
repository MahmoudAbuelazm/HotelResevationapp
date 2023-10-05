import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:hotel_reservation/widgets/bottomSheets/date_bottom_sheet.dart';
import 'package:hotel_reservation/widgets/bottomSheets/room_type_bottom_sheet.dart';
import 'package:hotel_reservation/widgets/from_detail_row.dart';
import 'package:hotel_reservation/widgets/bottomSheets/guests_bottom_sheet.dart';

import '../dummy_data.dart';
import 'hotel_checkout.dart';

class DetailScreen extends StatefulWidget {
  static const String routeName = 'DetailScreen';
  static  String phone = '';

  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  var myController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    final hotelId = ModalRoute.of(context)?.settings.arguments as String;
    final selectedHotel = dummyHotels.firstWhere((hotel) => hotel.id == hotelId);

    void selectHotel(BuildContext ctx) {
      Navigator.of(ctx)
          .pushNamed(
        HotelCheckOut.routeName,
        arguments: hotelId,
      )
          .then((result) {
        /*if (result != null) {
        removeItem(result);
      }*/
      });
      DetailScreen.phone = myController.text;
    }
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, size: 33, color: Colors.black,),
          onPressed:()=> Navigator.of(context).pop(),),
        title: Text(
          'From Detail',
          style: GoogleFonts.inter(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Dates',
                style: GoogleFonts.inter(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return  const DateBottomSheet();
                      });
                },
                child: TextFormField(
                  enabled: false,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.calendar_month),
                      suffixIcon: const Icon(
                        Icons.keyboard_arrow_down,
                        size: 28,
                        color: Colors.black,
                      ),
                      hintText: DateBottomSheet.selectedDate,
                      hintStyle: GoogleFonts.inter(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff067F77),
                      ),
                      contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide.none),
                      fillColor: const Color(0xffF0E8E8),
                      filled: true),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
               Text(
                'Guests',
                style: GoogleFonts.inter(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),),
              const SizedBox(height: 8),
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return const GuestsBottomSheet();
                      });
                },
                child: TextFormField(
                  enabled: false,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.perm_identity_rounded),
                      suffixIcon: InkWell(
                          onTap: () {},
                          child: const Icon(
                            Icons.keyboard_arrow_down,
                            size: 28,
                            color: Colors.black,
                          )),
                      hintText: GuestsBottomSheet.guests,
                      hintStyle: GoogleFonts.inter(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff067F77),
                      ),
                      contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide.none),
                      fillColor: const Color(0xffF0E8E8),
                      filled: true),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
               Text(
                'Room type',
                style: GoogleFonts.inter(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return const RoomTypeBottomSheet();
                      });
                },
                child: TextFormField(
                  enabled: false,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.door_back_door_outlined),
                      suffixIcon: const Icon(
                        Icons.keyboard_arrow_down,
                        size: 28,
                        color: Colors.black,
                      ),
                      hintText: RoomTypeBottomSheet.roomType,
                      hintStyle: GoogleFonts.inter(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff067F77),
                      ),
                      contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide.none),
                      fillColor: const Color(0xffF0E8E8),
                      filled: true),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
               Text(
                'Number phone',
                 style: GoogleFonts.inter(
                   fontSize: 19,
                   fontWeight: FontWeight.w600,
                   color: Colors.black,
                 ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                controller: myController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.phone_outlined),
                    hintText: 'Your phone number ',
                    hintStyle: GoogleFonts.inter(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                      color: const Color(0xff067F77),
                ),
                    contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide.none),
                    fillColor: const Color(0xffF0E8E8),
                    filled: true),
              ),
               SizedBox(
                height: height * 0.02,
              ),
              FromDetailRow(
                  isChecked1, 'Keep me updated on more hotels and news',
                  'from this app'),
              const SizedBox(
                height: 12,
              ),
              FromDetailRow(isChecked2, 'send me emails about hotel nearby or ',
                  'discount'),
              const SizedBox(
                height: 12,
              ),
              FromDetailRow(
                  isChecked3,
                  'I accept the app terms of services,community',
                  'guidelines and privacy policy'),
               SizedBox(
                height: height * 0.05,
              ),
              GestureDetector(
                onTap: ()=>selectHotel(context),
                child: Container(
                  width: double.infinity,
                  height: 48,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: const Color(0xff06B1A6)),
                  child:  Center(
                    child: Text(
                      'Continue',
                      style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

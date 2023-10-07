import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_reservation/widgets/bottomSheets/date_bottom_sheet.dart';
import 'package:hotel_reservation/widgets/bottomSheets/guests_bottom_sheet.dart';
import 'package:hotel_reservation/widgets/bottomSheets/room_type_bottom_sheet.dart';

import '../dummy_data.dart';
import '../widgets/bottomSheets/promo_bottom_sheet.dart';
import 'from_detail_screen.dart';

class HotelCheckOut extends StatelessWidget {
  static const String routeName = 'CheckOutScreen';


  const HotelCheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    final hotelId = ModalRoute.of(context)?.settings.arguments as String;
    final selectedHotel =
        dummyHotels.firstWhere((hotel) => hotel.id == hotelId);

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
        title: Text(
          'CheckOut',
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
      body: Column(
        children: <Widget>[
           SizedBox(
            height: height * 0.01,
          ),
          Row(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(20),
                height: height * 0.26,
                width: width * 0.45,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      selectedHotel.imgUrl,
                      fit: BoxFit.cover,
                      //height: 768,
                      //width: 216,
                    )),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    selectedHotel.title,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(fontSize: 15,fontWeight: FontWeight.bold),
                  ),
                   SizedBox(
                    height: height*0.02,
                  ),
                  Text(
                    selectedHotel.rating,
                    style: GoogleFonts.inter(fontSize: 12),
                  ),
                  Text(
                    selectedHotel.numRating,
                    style: GoogleFonts.inter(fontSize: 12),
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 85, vertical: 50),
                      child: Image.asset('assets/Frame 44.png'))
                ],
              ),
            ],
          ),
           SizedBox(
            height: height*0.01,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey, width: 2)),
            height: height*0.58,
            width: width * 0.85,
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Your Booking",
                  style: GoogleFonts.inter(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                 SizedBox(
                  height: height*0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Date",
                      style: GoogleFonts.inter(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      DateBottomSheet.selectedDate,
                      style: GoogleFonts.inter(
                          fontSize: 15, ),
                    )
                  ],
                ),
                 SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Guest",
                      style: GoogleFonts.inter(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      GuestsBottomSheet.guests,
                      style: GoogleFonts.inter(
                          fontSize: 15, ),
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Room Type",
                      style: GoogleFonts.inter(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      RoomTypeBottomSheet.roomType,
                      style: GoogleFonts.inter(
                          fontSize: 15, ),
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Phone",
                      style: GoogleFonts.inter(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      DetailScreen.phone,
                      style: GoogleFonts.inter(
                          fontSize: 15, ),
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                const Divider(thickness: 2,),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Price Details",
                  style: GoogleFonts.inter(
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Price",
                      style: GoogleFonts.inter(
                          fontSize: 15,),
                    ),
                    Text(
                      selectedHotel.price,
                      style: GoogleFonts.inter(
                        fontSize: 15, ),
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Admen",
                      style: GoogleFonts.inter(
                          fontSize: 15),
                    ),
                    Text(
                      "2.50",
                      style: GoogleFonts.inter(
                        fontSize: 15, ),
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Total Price",
                      style: GoogleFonts.inter(
                          fontSize: 15),
                    ),
                    Text(
                      "${double.parse((selectedHotel.price).split(" ")[0]) + 2.50}",
                      style: GoogleFonts.inter(
                        fontSize: 15, ),
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text("Select",style: GoogleFonts.inter(
                        color: const Color.fromRGBO(217, 217, 217, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),),
                    const Icon(Icons.arrow_back_ios,size: 20,)
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Center(
                  child: GestureDetector(
                    onTap: (){
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return const Promo();
                          });
                    },
                    child: Container(
                      width: width * 0.6,
                      height: height * 0.06,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: const Color(0xff06B1A6)),
                      child:  Center(
                        child: Text(
                          'Select Payment',
                          style: GoogleFonts.inter(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

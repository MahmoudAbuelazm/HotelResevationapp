import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoomTypeBottomSheet extends StatefulWidget {
  const RoomTypeBottomSheet({super.key});
  static String roomType = "Select room type";
  @override
  State<RoomTypeBottomSheet> createState() => _RoomTypeBottomSheetState();
}

class _RoomTypeBottomSheetState extends State<RoomTypeBottomSheet> {
  bool isChecked=false;
  bool isChecked2=false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              height: 6,
              width: width*0.2,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 8,
          ),

           Center(
            child: Text(
              'Room Type',
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.black),
            ),
          ),
           SizedBox(
            height: height*0.03,
          ),
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: height*0.05,
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search,color: Colors.black,size: 36,),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25)
                ),
                hintText: 'Search Your Type',
                hintStyle: GoogleFonts.inter(
                  color: const Color(0xff06B1A6),
                  fontSize: 18,
                ),
              ),
            ),
          ),
           SizedBox(
            height: height*0.03,
          ),
           Text('Room List (24)',style: GoogleFonts.inter(
            color: Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.bold
          ),),
           SizedBox(
            height: height*0.02,
          ),
          Row(
            children: [
              const Icon(Icons.list_alt_outlined,size: 32),
              const SizedBox(
                width: 3.0,
              ),
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Queen Room',style: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontSize: 22
                  ),),
                  Text('A room with a queen -sized bed. May be acc..',style: GoogleFonts.inter(
                  ),)
                ],
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
           SizedBox(
            height: height*0.03,
          ),
          Row(
            children: [
              const Icon(Icons.list_alt_outlined,size: 32),
              const SizedBox(
                width: 3.0,
              ),
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('King Room',style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                      fontSize: 22
                  ),),
                  Text('A room with a king -sized bed. May be acc.....',style: GoogleFonts.inter(
                  ),)
                ],
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
           SizedBox(
            height: height*0.06,
          ),
          InkWell(
            onTap: () {
              setState(() {
                RoomTypeBottomSheet.roomType = ( isChecked? "Queen Room" : isChecked2? "King Room" :"Select room type");
                Navigator.of(context).pop();
              });
            },
            child: Container(
              alignment: Alignment.center,
              height: height*0.06,
              decoration: BoxDecoration(
                  color: const Color(0xff06B1A6),
                  borderRadius: BorderRadius.circular(25.0)),
              child:  Text(
                'Select',
                style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}

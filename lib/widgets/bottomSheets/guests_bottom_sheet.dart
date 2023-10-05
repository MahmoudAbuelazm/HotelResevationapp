import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GuestsBottomSheet extends StatefulWidget {
  const GuestsBottomSheet({super.key});
  static String guests = "Select number of guests";

  @override
  State<GuestsBottomSheet> createState() => _GuestsBottomSheetState();
}

class _GuestsBottomSheetState extends State<GuestsBottomSheet> {
  int numberOfGuests=0;
  int age=15;
  int childrenAge=2;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              height: 6,
              width: width * 0.2,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black),
            ),
          ),
          const SizedBox(
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
              'Room and Guests',
              style: GoogleFonts.inter(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
           SizedBox(
            height: height * 0.03,
          ),
           Text(
            'Room',
            style: GoogleFonts.inter(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black,
            ),
            textAlign: TextAlign.start,
          ),
          const SizedBox(
            height: 5.0,
          ),
          TextFormField(
            showCursor: false,
            readOnly: true,
            decoration: InputDecoration(
              hintText: 'Minimum contain 4 people',
              hintStyle:   GoogleFonts.inter(
                color: const Color(0xff06B1A6),
              ),
              suffixIcon: SizedBox(
                width: width * 0.2,
                child: Row(
                  children: [
                    InkWell(
                      onTap: (){
                        setState(() {
                          if(numberOfGuests==0){
                            return;
                          }else{numberOfGuests--;}
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            border: Border.all(
                                width: 1,
                                color: const Color(0xff06B1A6)
                            )
                        ),
                        child: const Icon(Icons.remove,color:Colors.black,),
                      ),
                    ),
                     const SizedBox(
                      width: 7.0,
                    ),
                    Text('$numberOfGuests',style:  GoogleFonts.inter(
                        fontSize: 18
                    ),),
                    const SizedBox(
                      width: 7.0,
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          if(numberOfGuests==4){
                            return;
                          }else{numberOfGuests++;}
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            border: Border.all(
                                width: 1,
                                color: const Color(0xff06B1A6)
                            )
                        ),
                        child: const Icon(Icons.add,color:Colors.black,),
                      ),
                    ),
                  ],
                ),
              )
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
           Text(
            'Adults',
            style: GoogleFonts.inter(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.black,
            ),
            textAlign: TextAlign.start,
          ),
          const SizedBox(
            height: 5.0,
          ),
          TextFormField(
            showCursor: false,
            readOnly: true,
            decoration: InputDecoration(
                hintText: 'Age +15',
                hintStyle:   GoogleFonts.inter(
                  color: const Color(0xff06B1A6),
                ),
                suffixIcon: SizedBox(
                  width: width * 0.22,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: (){
                          setState(() {
                            if(age==15){
                              return;
                            }else{age--;}
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              border: Border.all(
                                  width: 1,
                                  color: const Color(0xff06B1A6)
                              )
                          ),
                          child: const Icon(Icons.remove,color:Colors.black,),
                        ),
                      ),
                      const SizedBox(
                        width: 7.0,
                      ),
                      Text('$age',style:  GoogleFonts.inter(
                          fontSize: 18
                      ),),
                      const SizedBox(
                        width: 7.0,
                      ),
                      InkWell(
                        onTap: (){
                          setState(() {
                            if(age==100){
                              return;
                            }else{age++;}
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              border: Border.all(
                                  width: 1,
                                  color: const Color(0xff06B1A6)
                              )
                          ),
                          child: const Icon(Icons.add,color:Colors.black,),
                        ),
                      ),
                    ],
                  ),
                )
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
           Text(
            'Children',
            style: GoogleFonts.inter(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.black,
            ),
            textAlign: TextAlign.start,
          ),
          const SizedBox(
            height: 5.0,
          ),
          TextFormField(
            showCursor: false,
            readOnly: true,
            decoration: InputDecoration(
                hintText: 'Age 2-12',
                hintStyle:   GoogleFonts.inter(
                  color: const Color(0xff06B1A6),
                ),
                suffixIcon: SizedBox(
                  width: width * 0.20,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: (){
                          setState(() {
                            if(childrenAge==2){
                              return;
                            }else{childrenAge--;}
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              border: Border.all(
                                  width: 1,
                                  color: const Color(0xff06B1A6)
                              )
                          ),
                          child: const Icon(Icons.remove,color:Colors.black,),
                        ),
                      ),
                      const SizedBox(
                        width: 7.0,
                      ),
                      Text('$childrenAge',style:  GoogleFonts.inter(
                          fontSize: 18
                      ),),
                      const SizedBox(
                        width: 7.0,
                      ),
                      InkWell(
                        onTap: (){
                          setState(() {
                            if(childrenAge==12){
                              return;
                            }else{childrenAge++;}
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              border: Border.all(
                                  width: 1,
                                  color: const Color(0xff06B1A6)
                              )
                          ),
                          child: const Icon(Icons.add,color:Colors.black,),
                        ),
                      ),
                    ],
                  ),
                )
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          InkWell(
            onTap: () {
             setState(() {
               GuestsBottomSheet.guests = "${age+childrenAge} Guest";
               Navigator.of(context).pop();
             });
            },
            child: Container(
              alignment: Alignment.center,
              height: height * 0.07,
              decoration: BoxDecoration(
                  color: const Color(0xff06B1A6),
                  borderRadius: BorderRadius.circular(25.0)),
              child:  Text(
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

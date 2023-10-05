import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_reservation/screen/from_detail_screen.dart';

class HotelItem extends StatelessWidget {
  final String id;
  final String imgUrl;
  final String title;
  final String price;
  final String rating;
  final String numRating;
  final String star;

  const HotelItem({
    super.key,
    required this.id,
    required this.imgUrl,
    required this.title,
    required this.price,
    required this.rating,
    required this.numRating,
    required this.star,
  });

  void selectHotel(BuildContext ctx) {
    Navigator.of(ctx)
        .pushNamed(
          DetailScreen.routeName,
          arguments: id,
        )
        .then((result) {});
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Card(
        color: const Color.fromRGBO(226, 246, 245, 1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 10,
      shadowColor: const Color.fromRGBO(168, 225, 221, 1.0),
      //margin: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClipRRect(
            borderRadius:  BorderRadius.circular(15),
            child: Image.asset(
              imgUrl,
              height: height *  0.25,
              width: width,
              fit: BoxFit.cover,
            ),
          ),
           SizedBox(height: height*0.03,),
          Center(child: Text(title,style: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.bold),)),
           SizedBox(height: height*0.03,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text("Price started from",style: GoogleFonts.inter(fontSize: 15),),
          ),
          const SizedBox(height: 8,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children:<Widget> [
                Text(price,style: GoogleFonts.inter(fontSize: 15,color: Colors.red),),
                Text("/per night",style: GoogleFonts.inter(fontSize: 13),),
              ],
            ),
          ),
          const SizedBox(height: 8,),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Image.asset('assets/Frame 44.png'),
              ),
              Text(star,style: GoogleFonts.inter(fontSize: 15),),
               SizedBox(width: width * 0.05,),
              IconButton(
                icon: const Icon(Icons.shopping_cart_outlined, size: 36),
                onPressed:() => selectHotel(context),
              ),
            ],
          )
        ],
      ),
    );
        /*Container(
         //height: 450 ,
          //width: width * 0.9,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
              color: Color.fromRGBO(226, 246, 245, 1)),
          child: Column(
            children: [
              Image.asset(imgUrl,),
              Positioned(
                top: 100,
                left: 17,
                child: Row(
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: width * 0.15,
                    ),
                    Image.asset('assets/Frame 44.png')
                  ],
                ),
              ),
              Positioned(
                top: 330,
                left: 40,
                child: Column(
                  children: [
                    Text(
                      rating,
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      numRating,
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                top: 375,
                left: 45,
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.shopping_cart_outlined, size: 36),
                      onPressed:() => selectHotel(context),
                    ),
                    SizedBox(
                      width: width * 0.3,
                    ),
                    Column(
                      children: [
                        Text(
                          'Price started from',
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          price,
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'for every night',
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),*/

  }
}

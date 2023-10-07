import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewCard extends StatelessWidget {
  static const String routeName = 'NewCardScreen';
  const NewCard({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, size: 33, color: Colors.black,),
          onPressed:()=> Navigator.of(context).pop(),),
        title: Text(
          'Add New Card',
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
              const SizedBox(
                height: 30.0,
              ),
              Text(
                'Card Number',
                style: GoogleFonts.inter(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                enabled: false,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.line_weight_sharp),
                    hintText: "Enter Card Number",
                    hintStyle: GoogleFonts.inter(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff067F77),
                    ),
                    contentPadding: const EdgeInsets.symmetric(vertical: 25.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide.none),
                    fillColor: const Color(0xffF0E8E8),
                    filled: true),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Card holder name',
                style: GoogleFonts.inter(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),),
              const SizedBox(height: 8),
              TextFormField(
                enabled: false,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.perm_identity_rounded),
                    hintText: "Enter Holder Name",
                    hintStyle: GoogleFonts.inter(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff067F77),
                    ),
                    contentPadding: const EdgeInsets.symmetric(vertical: 25.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide.none),
                    fillColor: const Color(0xffF0E8E8),
                    filled: true),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Expired',
                style: GoogleFonts.inter(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                enabled: false,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.calendar_month_sharp),
                    hintText:"MM/YY",
                    hintStyle: GoogleFonts.inter(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff067F77),
                    ),
                    contentPadding: const EdgeInsets.symmetric(vertical: 25.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide.none),
                    fillColor: const Color(0xffF0E8E8),
                    filled: true),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'CVV Code',
                style: GoogleFonts.inter(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                enabled: false,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock_person_rounded),
                    hintText: 'CCV ',
                    hintStyle: GoogleFonts.inter(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff067F77),
                    ),
                    contentPadding: const EdgeInsets.symmetric(vertical: 25.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide.none),
                    fillColor: const Color(0xffF0E8E8),
                    filled: true),
              ),
               SizedBox(height: height * 0.25,),
              GestureDetector(
                onTap: ()=>Navigator.of(context).pop(),
                child: Container(
                  width: double.infinity,
                  height: height * 0.06,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: const Color(0xff06B1A6)),
                  child:  Center(
                    child: Text(
                      'Add Card',
                      style: GoogleFonts.inter(
                        fontSize: 20,
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

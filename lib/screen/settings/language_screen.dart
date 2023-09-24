import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_reservation/widgets/lang_container.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  bool status = false;
  bool status1 = false;
  bool status2 = false;
  bool status3 = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Language',
            style: GoogleFonts.inter(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_outlined,size: 33,color: Colors.black,)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.05,
            ),
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search,size: 33,color: Colors.black,),
                hintText: ' Search Language',
                hintStyle: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff067F77),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.025,
            ),
            GestureDetector(
              onTap: () => setState(() {
                if(status1 || status2 || status3)
                  {
                    return;
                  }
                else
                  {
                    status = !status;
                  }
              }),
              child: LangContainer(
                width: width,
                height: height,
                image: 'images/english.png',
                text: 'English',
                w: status? 70 : 0,
                h: status? 70 : 0,
              ),
            ),
             SizedBox(
              height: height * 0.015,
            ),
            GestureDetector(
              onTap: () => setState(() {
                if(status || status2 || status3)
                {
                  return;
                }
                else
                {
                  status1 = !status1;
                }
              }),
              child: LangContainer(
                width: width,
                height: height,
                image: 'images/egypt.png',
                text: 'Arabic',
                w: status1? 70 : 0,
                h: status1? 70 : 0,
              ),
            ),

            SizedBox(
              height: height * 0.015,
            ),
            GestureDetector(
              onTap:() => setState(() {
                if(status1 || status || status3)
                {
                  return;
                }
                else
                {
                  status2 = !status2;
                }
              }) ,
              child: LangContainer(
                width: width,
                height: height,
                image: 'images/Ellipse 9.png',
                text: 'Chinese',
                w: status2? 70 : 0,
                h: status2? 70 : 0,
              ),
            ),
            SizedBox(
              height: height * 0.015,
            ),
            GestureDetector(
              onTap:  () => setState(() {
                if(status1 || status2 || status)
                {
                  return;
                }
                else
                {
                  status3 = !status3;
                }
              }),
              child: LangContainer(
                width: width,
                height: height,
                image: 'images/Ellipse 9 (1).png',
                text: 'Deutsch',
                w: status3? 70 : 0,
                h: status3? 70 : 0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

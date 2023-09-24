import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';

class SecurityScreen extends StatefulWidget {

  const SecurityScreen({super.key});

  @override
  State<SecurityScreen> createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {
  bool status = false;
  bool status1 = false;
  bool status2 = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Security',
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
            child: const Icon(Icons.arrow_back_outlined,size: 33,color: Colors.black,),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.08,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black.withOpacity(0.25),
                ),
                borderRadius: BorderRadius.circular(18),
              ),
              width: width * 0.9,
              height: height * 0.37,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Face ID',
                            style: GoogleFonts.inter(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.black)),
                        FlutterSwitch(
                          width: width * 0.20,
                          height: height * 0.05,
                          toggleSize: 30.0,
                          value: status,
                          borderRadius: 30.0,
                          activeToggleColor: Colors.white,
                          inactiveToggleColor: const Color(0xff06B1A6),
                          toggleColor: Colors.black,
                          activeColor: const Color(0xff06B1A6),
                          inactiveColor: Colors.white,
                          onToggle: (val) {
                            setState(() {
                              status = val;
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    const Divider(
                      thickness: 1,
                      color: Color(0xffD9D9D9),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Remember password',
                            style: GoogleFonts.inter(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.black)),
                        FlutterSwitch(
                          width: width * 0.20,
                          height: height * 0.05,
                          toggleSize: 30.0,
                          value: status1,
                          borderRadius: 30.0,
                          activeToggleColor: Colors.white,
                          inactiveToggleColor: const Color(0xff06B1A6),
                          toggleColor: Colors.black,
                          activeColor: const Color(0xff06B1A6),
                          inactiveColor: Colors.white,
                          onToggle: (val) {
                            setState(() {
                              status1 = val;
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    const Divider(
                      thickness: 1,
                      color: Color(0xffD9D9D9),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Touch ID ',
                            style: GoogleFonts.inter(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.black)),
                        FlutterSwitch(
                          width: width * 0.20,
                          height: height * 0.05,
                          toggleSize: 30.0,
                          value: status2,
                          borderRadius: 30.0,
                          activeToggleColor: Colors.white,
                          inactiveToggleColor: const Color(0xff06B1A6),
                          toggleColor: Colors.black,
                          activeColor: const Color(0xff06B1A6),
                          inactiveColor: Colors.white,
                          onToggle: (val) {
                            setState(() {
                              status2 = val;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

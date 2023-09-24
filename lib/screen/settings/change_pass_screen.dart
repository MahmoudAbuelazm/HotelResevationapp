import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChangePassScreen extends StatefulWidget {
  const ChangePassScreen({super.key});

  @override
  State<ChangePassScreen> createState() => _ChangePassScreenState();
}

class _ChangePassScreenState extends State<ChangePassScreen> {
  bool secure = true;
  bool secure2 = true;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Change Password',
              style: GoogleFonts.inter(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.black)),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_outlined,size: 33,color: Colors.black,)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.03,
            ),
            Text(
              " New Password",
              style: GoogleFonts.inter(
                fontSize: 21,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              elevation: 3,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.black.withOpacity(0.75)),
                ),
                width: width * 0.95,
                height: height * 0.06,
                child: Row(
                  children: [
                    SizedBox(
                      width: width * 0.035,
                    ),
                    const Icon(Icons.lock_person_outlined,size: 33),
                    SizedBox(
                      width: width * 0.025,
                    ),
                    Text(
                      "Enter new password",
                      style: GoogleFonts.inter(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff067F77),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.25,
                    ),
                    IconButton(
                      icon: Icon(
                        secure ? Icons.visibility : Icons.visibility_off,
                        color: const Color(0xff067F77),),
                      onPressed: () {
                        setState(() {
                          secure = !secure;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Text(
              " Confirm Password",
              style: GoogleFonts.inter(
                fontSize: 21,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              elevation: 3,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.black.withOpacity(0.75)),
                ),
                width: width * 0.95,
                height: height * 0.06,
                child: Row(
                  children: [
                    SizedBox(
                      width: width * 0.035,
                    ),
                    const Icon(Icons.lock_person_outlined,size: 33),
                    SizedBox(
                      width: width * 0.025,
                    ),
                    Text(
                      "Confirm your new password",
                      style: GoogleFonts.inter(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff067F77),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.10,
                    ),
                    IconButton(
                      icon: Icon(
                        secure2 ? Icons.visibility : Icons.visibility_off,
                        color: const Color(0xff067F77),),
                      onPressed: () {
                        setState(() {
                          secure2 = !secure2;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            const Expanded(child: SizedBox()),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                backgroundColor: const Color(0xff06B1A6),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: SizedBox(
                height: height * 0.06,
                child: Center(
                  child: Text(
                    "Change Now",
                    style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.04,
            ),
          ],
        ),
      ),
    );
  }
}

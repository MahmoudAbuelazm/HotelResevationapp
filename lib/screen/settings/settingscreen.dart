import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_reservation/widgets/customcontainer.dart';

class settingscreen extends StatelessWidget {
  static const String routeName = 'settingscreen';
  const settingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Settings',
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
              child: Image.asset('images/ep_back.png')),
          actions: [Image.asset('images/charm_menu-kebab.png')],
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
                "General",
                style: GoogleFonts.inter(
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              customcontainer(
                width: width,
                height: height,
                image1: "images/iconamoon_profile.png",
                text: "Edit Profile",
                image2: "images/ooui_next-ltr.png",
              ),
              SizedBox(
                height: height * 0.015,
              ),
              customcontainer(
                width: width,
                height: height,
                image1: "images/formkit_password.png",
                text: "Change Password",
                image2: "images/ooui_next-ltr.png",
              ),
              SizedBox(
                height: height * 0.015,
              ),
              customcontainer(
                width: width,
                height: height,
                image1: "images/carbon_notification.png",
                text: "Notifications",
                image2: "images/ooui_next-ltr.png",
              ),
              SizedBox(
                height: height * 0.015,
              ),
              customcontainer(
                width: width,
                height: height,
                image1: "images/mdi_security-lock-outline.png",
                text: "Security",
                image2: "images/ooui_next-ltr.png",
              ),
              SizedBox(
                height: height * 0.015,
              ),
              customcontainer(
                width: width,
                height: height,
                image1: "images/ic_outline-language.png",
                text: "Language",
                image2: "images/ooui_next-ltr.png",
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Text(
                "Preferencess",
                style: GoogleFonts.inter(
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              customcontainer(
                width: width,
                height: height,
                image1: "images/fluent_chat-help-24-regular.png",
                text: "Help & Support",
                image2: "images/ooui_next-ltr.png",
              ),
              SizedBox(
                height: height * 0.015,
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
                  width: width * 0.9,
                  height: height * 0.06,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                            "images/streamline_interface-logout-arrow-exit-frame-leave-logout-rectangle-right.png"),
                        Text(
                          "Logout",
                          style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffEB1010),
                          ),
                        ),
                        Image.asset("images/ooui_next-ltr.png")
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

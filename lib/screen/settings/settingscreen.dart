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
                color: Colors.black,
              ),
              SizedBox(
                height: height * 0.015,
              ),
              customcontainer(
                color: Colors.black,
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
                color: Colors.black,
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
                color: Colors.black,
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
                color: Colors.black,
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
                color: Colors.black,
                width: width,
                height: height,
                image1: "images/fluent_chat-help-24-regular.png",
                text: "Help & Support",
                image2: "images/ooui_next-ltr.png",
              ),
              SizedBox(
                height: height * 0.015,
              ),
              GestureDetector(
                onTap: () {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      actions: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: height * 0.05,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  GestureDetector(
                                      onTap: () => Navigator.pop(context),
                                      child:
                                          Image.asset("images/ph_x-bold.png")),
                                ],
                              ),
                              SizedBox(
                                height: height * 0.05,
                              ),
                              Text(
                                "Are you sure you want to",
                                style: GoogleFonts.inter(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "logout?",
                                style: GoogleFonts.inter(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: height * 0.03,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  backgroundColor: const Color(0xff06B1A6),
                                ),
                                onPressed: () =>
                                    Navigator.pop(context, 'Cancel'),
                                child: Container(
                                  width: width * 0.5,
                                  height: height * 0.07,
                                  child: Center(
                                    child: Text(
                                      "Cancel",
                                      style: GoogleFonts.inter(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(context, 'Logout'),
                                child: Text(
                                  'Logout',
                                  style: GoogleFonts.inter(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color:
                                          Color(0xffEB1010).withOpacity(.88)),
                                ),
                              ),
                              SizedBox(
                                height: height * 0.05,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
                child: customcontainer(
                  color: Color(0xffEB1010),
                  width: width,
                  height: height,
                  image1:
                      "images/streamline_interface-logout-arrow-exit-frame-leave-logout-rectangle-right.png",
                  text: "Logout",
                  image2: "images/ooui_next-ltr.png",
                ),
              ),
            ],
          ),
        ));
  }
}

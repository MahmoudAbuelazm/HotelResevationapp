import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_reservation/screen/p_view.dart';
import 'package:hotel_reservation/screen/settings/security_screen.dart';
import 'package:hotel_reservation/widgets/custom_container.dart';

import 'change_pass_screen.dart';
import 'edit_profile_screen.dart';
import 'help_support_screen.dart';
import 'language_screen.dart';
import 'notification_screen.dart';

class SettingScreen extends StatelessWidget {
  static const String routeName = 'setting';

  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text('Settings',
              style: GoogleFonts.inter(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.black)),
          backgroundColor: Colors.white,
          elevation: 1,
          centerTitle: true,
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
              GestureDetector(
                onTap: () =>
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const EditProfileScreen()),
                    ),
                child: CustomContainer(
                  width: width,
                  height: height,
                  icon1: const Icon(Icons.person_2_outlined,size: 33,),
                  text: "Edit Profile",
                  icon2: const Icon(Icons.arrow_forward_ios,size: 33),
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: height * 0.015,
              ),
              GestureDetector(
                onTap: () =>
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ChangePassScreen()),
                    ),
                child: CustomContainer(
                  color: Colors.black,
                  width: width,
                  height: height,
                  icon1: const Icon(Icons.lock_person_outlined,size: 33),
                  text: "Change Password",
                  icon2: const Icon(Icons.arrow_forward_ios,size: 33),
                ),
              ),
              SizedBox(
                height: height * 0.015,
              ),
              GestureDetector(
                onTap: () =>
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const NotificationScreen()),
                    ),
                child: CustomContainer(
                  color: Colors.black,
                  width: width,
                  height: height,
                  icon1: const Icon(Icons.notifications,size: 33),
                  text: "Notifications",
                  icon2: const Icon(Icons.arrow_forward_ios,size: 33),
                ),
              ),
              SizedBox(
                height: height * 0.015,
              ),
              GestureDetector(
                onTap: () =>
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SecurityScreen()),
                    ),
                child: CustomContainer(
                  color: Colors.black,
                  width: width,
                  height: height,
                  icon1: const Icon(Icons.security,size: 33),
                  text: "Security",
                  icon2: const Icon(Icons.arrow_forward_ios,size: 33),
                ),
              ),
              SizedBox(
                height: height * 0.015,
              ),
              GestureDetector(
                onTap: () =>
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LanguageScreen()),
                    ),
                child: CustomContainer(
                  color: Colors.black,
                  width: width,
                  height: height,
                  icon1: const Icon(Icons.language,size: 33),
                  text: "Language",
                  icon2: const Icon(Icons.arrow_forward_ios,size: 33),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Text(
                "Preferences",
                style: GoogleFonts.inter(
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              GestureDetector(
                onTap: () =>
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HelpSupportScreen()),
                    ),
                child: CustomContainer(
                  color: Colors.black,
                  width: width,
                  height: height,
                  icon1: const Icon(Icons.help_outline,size: 33),
                  text: "Help & Support",
                  icon2: const Icon(Icons.arrow_forward_ios,size: 33),
                ),
              ),
              SizedBox(
                height: height * 0.015,
              ),
              GestureDetector(
                onTap: () {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      shape: const RoundedRectangleBorder(
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
                                child: SizedBox(
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
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const PView()),
                                    ),
                                child: Text(
                                  'Logout',
                                  style: GoogleFonts.inter(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xffEB1010)
                                          .withOpacity(.88)),
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
                child: CustomContainer(
                  color: const Color(0xffEB1010),
                  width: width,
                  height: height,
                  icon1:
                     const Icon(Icons.login,size: 33,color: Colors.red,),
                  text: "Logout",
                  icon2: const Icon(Icons.arrow_forward_ios,size: 33),
                ),
              ),
            ],
          ),
        ));
  }
}

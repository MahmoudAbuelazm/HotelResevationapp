import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'loginscreen.dart';

class CreateAccountScreen extends StatefulWidget {
  static const String routeName = 'Create acc. Screen';

  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  bool secure = true;
  var myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        width: width,
        height: height,
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.08,
                ),
                Text(
                  "Create Account",
                  style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                Text(
                  "Start learning with create your account",
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff06B1A6),
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Text(
                  "Username",
                  style: GoogleFonts.inter(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 5,
                  shadowColor: Colors.black,
                  child: TextFormField(
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Invalid username!!";
                      } else {
                        return null;
                      }
                    },
                    style: GoogleFonts.inter(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff06B1A6),
                    ),
                    decoration: InputDecoration(
                      prefixIcon: Image.asset(
                        "images/User.png",
                        height: 20,
                      ),
                      hintText: "create your Username",
                      hintStyle: GoogleFonts.inter(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff06B1A6).withOpacity(.44),
                      ),
                      fillColor: const Color(0xff06B1A6).withOpacity(0.06),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Text(
                  "Email or Phone Number",
                  style: GoogleFonts.inter(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 5,
                  shadowColor: Colors.black,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    validator: (val) {
                      if (val!.isEmpty || !val.contains("@")) {
                        return "Invalid E_Mail!!";
                      } else {
                        return null;
                      }
                    },
                    style: GoogleFonts.inter(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff06B1A6),
                    ),
                    decoration: InputDecoration(
                      prefixIcon: Image.asset(
                        "images/mdi.png",
                        height: 20,
                      ),
                      hintText: "Enter your email or phone number",
                      hintStyle: GoogleFonts.inter(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff06B1A6).withOpacity(.44),
                      ),
                      fillColor: const Color(0xff06B1A6).withOpacity(0.06),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Text(
                  "Password",
                  style: GoogleFonts.inter(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 5,
                  shadowColor: Colors.black,
                  child: TextFormField(
                    validator: (val) {
                      if (val!.isEmpty || val.length < 5) {
                        return "Password Is Too Short!!";
                      } else {
                        return null;
                      }
                    },
                    style: GoogleFonts.inter(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff06B1A6),
                    ),
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(
                          secure ? Icons.visibility : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            secure = !secure;
                          });
                        },
                      ),
                      prefixIcon: Image.asset(
                        "images/material.png",
                        height: 20,
                      ),
                      hintText: "create your password",
                      hintStyle: GoogleFonts.inter(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff06B1A6).withOpacity(.44),
                      ),
                      fillColor: const Color(0xff06B1A6).withOpacity(0.06),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: secure,
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                GestureDetector(
                  onTap: () {
                    if (!_formKey.currentState!.validate()) {
                      return;
                    }
                    _formKey.currentState?.save();
                    Navigator.of(context).pushReplacementNamed(Loginscreen.routeName);
                  },
                  child: Container(
                    width: width,
                    height: height * 0.07,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color(0xff06B1A6),
                    ),
                    child: Center(
                      child: Text(
                        "Create Account",
                        style: GoogleFonts.inter(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Center(
                  child: Text("Or Using other method",
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff06B1A6),
                      )),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                GestureDetector(
                  child: Container(
                      width: width,
                      height: height * 0.05,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black.withOpacity(0.1)),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.transparent,
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "images/google.png",
                              height: 20,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text("sign in with Google",
                                style: GoogleFonts.inter(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ))
                          ])),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                GestureDetector(
                  child: Container(
                      width: width,
                      height: height * 0.05,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black.withOpacity(0.1)),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.transparent,
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "images/facebook.png",
                              height: 25,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text("sign in with Facebook",
                                style: GoogleFonts.inter(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ))
                          ])),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Center(
                  child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed(Loginscreen.routeName);
                      },
                      child: Text(
                        "Already Have an Account",
                        style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff06B1A6),
                          fontStyle: FontStyle.italic
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

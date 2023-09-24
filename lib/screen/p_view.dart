import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';
import '../modules/page_view_data.dart';
import '../widgets/indicator.dart';
import 'create_account_screen.dart';
import 'login_screen.dart';

class PView extends StatefulWidget {
  const PView({super.key});

  @override
  State<StatefulWidget> createState() => _PViewState();
}

class _PViewState extends State<PView> {
  int _currentIndex = 0;
  final PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 2), (timer) {
      _currentIndex = (_currentIndex + 1) % myData.length;
      _controller.animateToPage(_currentIndex,
          duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/a': (ctx) => const CreateAccountScreen(),
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Builder(builder: (ctx1) {
              return PageView(
                controller: _controller,
                onPageChanged: (val) {
                  setState(() {
                    _currentIndex = val;
                  });
                },
                children: myData
                    .map(
                      (item) => SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15)),
                                  child: Image.asset(
                                    item.imageUrl,
                                    width: double.infinity,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 500.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 400,
                                    decoration: const BoxDecoration(
                                      color: Color.fromRGBO(240, 240, 245, 1),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(25),
                                      ),
                                    ),
                                    child: Column(
                                      children: [
                                        const SizedBox(
                                          height: 30,
                                        ),
                                        Text(
                                          item.title,
                                          style: GoogleFonts.inter(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: Text(
                                            item.description,
                                            style: GoogleFonts.inter(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 70,
                                        ),
                                        Indicator(_currentIndex)
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                    .toList(),
              );
            }),
            Align(
                alignment: const Alignment(0, 0.85),
                child: SizedBox(
                  width: 370,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(15)),
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromRGBO(6, 177, 166, 1)),
                    ),
                    onPressed: () async {
                      Navigator.of(context).pushReplacementNamed(CreateAccountScreen.routeName);
                    },
                    child: Text(
                      "Create Account",
                      style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            Align(
              alignment: const Alignment(0, 1),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(Loginscreen.routeName);
                },
                child: Text(
                  "Already Have an Account",
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(6, 177, 166, 1),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

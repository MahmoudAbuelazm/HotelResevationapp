import 'package:flutter/material.dart';

import 'hotels_data.dart';

class AlexHotelScreen extends StatelessWidget {
  static const String routeName='Alex Hotel';
  List<HotelsData> hotelsData = [
    HotelsData('assets/5.png','Tolip Hotel Alexandria','Excellent','2,048 Ratings','2,555 EGP'),
    HotelsData('assets/6.png','Tolip Hotel Alexandria','Excellent','2,048 Ratings','2,555 EGP'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 40.0,
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    height: 80,
                    width: 380,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(226, 246, 245, 1),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                              size: 28,
                            )),
                        SizedBox(
                          width: 55.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Alexandria',
                              style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Hotel',
                              style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ],
                    )),
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: hotelsData.length,
                    itemBuilder: (context, index) {
                      return hotelsData[index];
                    }))
          ],
        ),
      ),
    );
  }
}
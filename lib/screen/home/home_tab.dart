import 'package:flutter/material.dart';
import 'package:hotel_reservation/screen/home/category.dart';

class HomeTab extends StatelessWidget {
  List<Category>categories=[
    Category('assets/Frame 15.png', 'assets/Frame 16.png'),
    Category('assets/Frame 17.png', 'assets/Frame 18.png'),
    Category('assets/Frame 15.png', 'assets/Frame 16.png'),
    Category('assets/Frame 17.png', 'assets/Frame 18.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 50, left: 15, right: 15),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                child: Image.asset('assets/Ellipse 8.jpg'),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome Aadam',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 12, horizontal: 5),
                          prefixIcon: Icon(
                            Icons.search,
                            size: 38,
                          ),
                          hintText: 'Search',
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35)))),
                    )
                  ],
                ),
              )
            ],
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return categories[index];
                  })),
        ],
      ),
    );
  }
}

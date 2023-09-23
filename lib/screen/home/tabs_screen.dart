import 'package:flutter/material.dart';
import 'package:hotel_reservation/modules/hotel.dart';
import 'package:hotel_reservation/screen/home/favourite_tab.dart';
import 'package:hotel_reservation/screen/home/setting_tab.dart';

import 'category_screen.dart';

class TabScreen extends StatefulWidget {
  final List<Hotel> favourite;

  const TabScreen(this.favourite, {super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
  static const String routeName = 'HomeScreen';
}

class _TabScreenState extends State<TabScreen> {
  var selectedIndex = 0;
  List? items;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    items = [
      const CategoriesScreen(),
      FavouriteTab(widget.favourite),
      SettingTab()
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: items![selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedIconTheme: const IconThemeData(color: Color(0xff07E9DA)),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 36,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border,
                  size: 36,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  size: 36,
                ),
                label: ''),
          ],
        ),
    );
  }
}

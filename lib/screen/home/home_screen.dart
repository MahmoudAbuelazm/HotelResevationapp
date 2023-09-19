import 'package:flutter/material.dart';
import 'package:hotel_reservation/screen/home/favourite_tab.dart';
import 'package:hotel_reservation/screen/home/home_tab.dart';
import 'package:hotel_reservation/screen/home/setting_tab.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
  static const String routeName='HomeScreen';
}

class _HomeScreenState extends State<HomeScreen> {
  var selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: items[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: IconThemeData(
          color: Color(0xff07E9DA)
        ),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: selectedIndex,
        onTap: (index){
          setState(() {
            selectedIndex=index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,size: 36,),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border,size: 36,),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.settings,size: 36,),label: ''),
        ],
      )
    );
  }

  List<Widget> items =[HomeTab(),FavouriteTab(),SettingTab()];
}

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:untitled2/Color_font/color.dart';
import 'package:untitled2/Screens/account_screen.dart';
import 'package:untitled2/Screens/cart_screen.dart';
import 'package:untitled2/Screens/explore_screen.dart';
import 'package:untitled2/Screens/main_screen.dart';
import 'package:untitled2/Screens/offer_screen.dart';

import 'Model.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    int screenIndix=0;

  List<Widget>screen=[
    MainScreen(),
    ExploreScreen(),
    CartScreen(),
    OfferScreen(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: screenIndix,
        onTap: (int indix){
               setState(() {
                 screenIndix=indix;
               });

        },
        items: [
          BottomNavigationBarItem(icon:Icon(Icons.home),label: 'Home' ),
          BottomNavigationBarItem(icon:Icon(Icons.search),label: 'Explore' ),
          BottomNavigationBarItem(icon:Icon(Icons.shopping_cart),label: 'Cart' ),
          BottomNavigationBarItem(icon:Icon(Icons.local_offer),label: 'Offer' ),
          BottomNavigationBarItem(icon:Icon(Icons.person),label: 'Account' ),
        ],
      ),
      body: screen[screenIndix],
    );
  }
}

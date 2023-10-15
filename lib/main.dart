import 'package:flutter/material.dart';
import 'Screens/Home_screen.dart';
import 'Screens/signup_screen.dart';
import 'Screens/splash_screen.dart';
import 'Screens//login_screen.dart';
import 'package:dio/dio.dart';

import 'json/testfile.dart';


void main() {
   getHttp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}





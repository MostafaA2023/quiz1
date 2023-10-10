import 'package:flutter/material.dart';
import 'package:quiz1/homescreen.dart';
import 'package:quiz1/screen_2/screenhome.dart';
import 'package:quiz1/screen_3/home_insights.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
      HomeScreen.routName:(context) =>  const HomeScreen(),
      Screen.routName:(context) =>  Screen(),
           Homeinsights.routName:(context) =>  Homeinsights(),

    },initialRoute: Homeinsights.routName,
    );
  }
}

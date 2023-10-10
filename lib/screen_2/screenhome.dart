import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:quiz1/screen_2/barchar.dart';
import 'package:quiz1/screen_2/home_2.dart';
import 'package:quiz1/screen_2/navigation.dart';
import 'package:quiz1/screen_2/personal.dart';

// ignore: must_be_immutable
class Screen extends StatefulWidget {
  Screen({Key? key}) : super(key: key);
  static const routName = "Screen";

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  List<Widget> tap = [
    const Home2(),
    const Navigation(),
    const Barchar(),
    const Personal(),
  ];

  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Hello, Jade",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Ready to workout?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          leading: CircleAvatar(child: Image.asset("lib/images/Ellipse 10.png")),
          actions: const [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: badges.Badge(
                badgeContent: Text(''),
                child: Icon(
                  Icons.notifications_none_rounded,
                  color: Colors.grey,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
        body: tap[currentindex],
        bottomNavigationBar: buildbottomNavigationBar(),
        
      ),
    );
  }

Widget buildbottomNavigationBar() => Theme(
      data: ThemeData(canvasColor: Colors.white),
      child: BottomNavigationBar(
        currentIndex: currentindex,
        onTap: (index) {
          setState(() {
            currentindex = index;
          });
        },
        selectedIconTheme: const IconThemeData(color: Colors.blueGrey),
        selectedItemColor: Colors.blueGrey,
        unselectedIconTheme: const IconThemeData(color: Colors.grey),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.navigation_outlined), label: "navigation"),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart_outlined), label: "bar_chart"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "person"),
        ],
      ),
    );
}


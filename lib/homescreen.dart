import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:quiz1/taps/calener.dart';
import 'package:quiz1/taps/grid.dart';
import 'package:quiz1/taps/home.dart';
import 'package:quiz1/taps/person.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
 static const  routName='HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget>taps=[const Home(),const Grid(),const Calendar(),const Persson()];

  int currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {

    return  Container(decoration: const BoxDecoration(color: Colors.white),
      child: Scaffold(backgroundColor: Colors.transparent,
        appBar: AppBar(backgroundColor: Colors.transparent,elevation: 0,title:const Text("Moody",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.w400,),
        ), leading: Image.asset("lib/images/logo.png"),actions: const [ Padding(
          padding: EdgeInsets.all(15.0),
          child: badges.Badge(badgeContent: Text(''),
          child:Icon(Icons.notifications_none_rounded,color: Colors.grey,size: 30,),),
        ),],),
        body: taps[currentTabIndex]  ,
       bottomNavigationBar:buildbottomNavigationBar() , 
       
      ),
    );
  }Widget buildbottomNavigationBar()=>Theme(
  data: ThemeData(canvasColor: Colors.white),
  child:BottomNavigationBar(
    currentIndex:currentTabIndex,
    onTap: (index) {
          setState(() {
            currentTabIndex = index;
          });
        },
   
    selectedIconTheme: const IconThemeData(color: Colors.green),
    selectedItemColor: Colors.green,unselectedIconTheme: const IconThemeData(color: Colors.grey),
  
  items: const [
  
    BottomNavigationBarItem(icon: Icon(Icons.home,),label: "Home"),
  
      BottomNavigationBarItem(icon: Icon(Icons.grid_view,),label: "grid"),
  
    BottomNavigationBarItem(icon: Icon(Icons.calendar_today,),label: "calendar"),
  
    BottomNavigationBarItem(icon: Icon(Icons.person,),label: "person"),
  
   ]
  
  ),
);
}



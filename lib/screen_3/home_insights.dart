import 'package:flutter/material.dart';
import 'package:quiz1/screen_3/chat.dart';
import 'package:quiz1/screen_3/insights.dart';
import 'package:quiz1/screen_3/today.dart';

class Homeinsights extends StatefulWidget {
   Homeinsights({super.key});
 static const  routName='Insihts';

  @override
  State<Homeinsights> createState() => _InsightsState();
}

class _InsightsState extends State<Homeinsights> {
  List<Widget>taps=[const Today(),const Insights(),const Chat()];

  int currenttabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(decoration: const BoxDecoration(color: Colors.white), 
        
      child: Scaffold(backgroundColor: Colors.transparent,
        appBar: AppBar(backgroundColor: Colors.transparent,elevation: 0,title: Row(mainAxisAlignment: MainAxisAlignment.center,
          children:[CircleAvatar(radius: 20,backgroundColor: Colors.white10,child: Image.asset("lib/images/Frame (1).png"),), const Text("AliceCare",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.w400,),
          ), 
        ]),
        ),
       body: taps[currenttabIndex]  ,
       bottomNavigationBar:buildbottomNavigationBar() ,
 ),

    );
  }
  Widget buildbottomNavigationBar()=>Theme(
  data: ThemeData(canvasColor: Colors.white),
  child:BottomNavigationBar(
    currentIndex:currenttabIndex,
    onTap: (index) {
          setState(() {
            currenttabIndex = index;
          });
        },
   
    selectedIconTheme: const IconThemeData(color: Colors.purple),
    selectedItemColor: Colors.purple,unselectedIconTheme: const IconThemeData(color: Colors.grey),
  
  items: const [
  
    BottomNavigationBarItem(icon: Icon(Icons.calendar_today,),label: "to_day"),
  
      BottomNavigationBarItem(icon: Icon(Icons.grid_view_sharp,),label: "insights"),
  
    BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline,),label: "chat"),
  
  
   ]
  
  ),
);

}
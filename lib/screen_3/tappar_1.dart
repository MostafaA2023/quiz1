// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp( Tabar());

class Tabar extends StatelessWidget {
   Tabar({Key? key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(initialIndex: 0,
      length: 4,
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Scaffold(
            appBar: AppBar(backgroundColor:  Colors.white,toolbarHeight: 5,
              centerTitle: true,
              
              
              bottom:  TabBar(labelColor: Colors.purple,indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: const Color(0xffF4EBFF),),
                tabs: const [
                  Tab(text: 'Discover'),
                  Tab(text: 'News'),
                  Tab(text: 'Most Viewed'),
                  Tab(text: 'Saved',),
                ],
              ),
        
            ),
            body:  TabBarView(
              children: [
                Column(
                  children: [
                   Row(children: [
            const Text("Hot topics",style: TextStyle( color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600)),const Spacer(),ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor: Colors.white,elevation: 0)
            ,onPressed: (){}, child: const Text('See all >',
            style: TextStyle(color: Colors.purple,fontSize: 14,fontWeight: FontWeight.w600),),)
                ],)
                   ,Row(
                     children: [
                       Image.asset("lib/images/Frame 3466530.png"),
                     ],
                       ),const Column(mainAxisAlignment: MainAxisAlignment.start,children: [Text("Get Tips",style: TextStyle(color: Colors.purple,fontSize: 14,fontWeight: FontWeight.w600))],)
                ,Column(children: [Row(
                children: [Image.asset("lib/images/Doctor-PNG-Images 1.png"),Spacer(),
                Column(
                  children:  [
                    Text("Connect with doctors",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                    Text(" & get suggestions",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600))
                ,Text("Connect now and get"),Text("expert insights"),ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor: Colors.purple),onPressed: (){}, child: Text("View detail"))
                  ],
                ),
        
                ],  
                )]) ,Spacer(),
                Row(children: [
            const Text("Cycle Phases and Period",style: TextStyle( color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600)),const Spacer(),
            ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor: Colors.white,elevation: 0)
            ,onPressed: (){}, child: const Text('See all >',
            style: TextStyle(color: Colors.purple,fontSize: 14,fontWeight: FontWeight.w600),),)
                ],)  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
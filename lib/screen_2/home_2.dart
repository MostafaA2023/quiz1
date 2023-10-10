import 'package:flutter/material.dart';
import 'package:quiz1/screen_2/tappar.dart';

class Home2 extends StatelessWidget {
  const Home2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(children: [Container(color: const Color(0xFFF8F9FC),height:75,
        // ignore: prefer_const_constructors
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: const [SizedBox(height:10),
          Column(
            children: [
              Row(
                children: [
                  ImageIcon(AssetImage("lib/images/heart.png")),Text("Heart Rate",style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w400))
                ],
              ),Text("81 BPM",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),)
            ],
          ),VerticalDivider(width: 2,color: Color(0xffD9D9D9),),
          Column(
            children: [
              Row(
                children: [
                  Icon(Icons.list,color: Colors.grey,),Text("To-do",style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w400))
                ],
              ),Text("32,5%",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600))
            ],
          ),VerticalDivider(color: Color(0xffD9D9D9),),
          Column(
            children: [
              Row(
                children: [
                  ImageIcon(AssetImage("lib/images/Frame.png")),Text("Calo",style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w400))
                ],
              ),Text("1000 cal",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),)
            ],
          ),
          
        ],),
      ),const SizedBox(height: 12,),
      Container(alignment: Alignment.topLeft,child: 
      const Text("Workout Programs",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600))),
     const TabBarApp(),
      ],
      ),
    );
  }
}
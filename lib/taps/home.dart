import 'package:flutter/material.dart';
import 'package:quiz1/taps/carouselOptions.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [const Text("Hello, Sara Rose",style: TextStyle(color: Colors.black,fontSize:20,fontWeight: FontWeight.w400),),const SizedBox(height: 6,)
          ,const Text("How are you feeling today ?",style: TextStyle(color: Colors.black,fontSize:16,fontWeight: FontWeight.w400,)),const SizedBox(height: 12,),
          const Row(
              children: [CircleAvatar(backgroundColor: Colors.grey,backgroundImage: AssetImage('lib/images/love.png'),radius: 25,),
          Spacer(),CircleAvatar(backgroundColor: Colors.grey,backgroundImage: AssetImage('lib/images/cool.png'),radius: 25,),Spacer(),
          CircleAvatar(backgroundColor: Colors.grey,backgroundImage: AssetImage('lib/images/happy.png'),radius: 25,),Spacer(),
          CircleAvatar(backgroundColor: Colors.grey,backgroundImage: AssetImage('lib/images/sad.png'),radius: 25,),
          
              ],),const SizedBox(height: 12,),
              const Row(
          children: [
            Text("Love"),Spacer(),Text("Cool"),Spacer(),Text("Happy"),Spacer(),Text("Sad")
          ],
              ),Row(children: [
          const Text("Feature",style: TextStyle( color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600)),const Spacer(),ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor: Colors.white,elevation: 0)
          ,onPressed: (){}, child: const Text('See more >',style: TextStyle(color: Colors.greenAccent,fontSize: 14,fontWeight: FontWeight.w600),),)
              ],), const CarouSelOptions (),
            Row(children: [
          const Text("Exercise",style: TextStyle( color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600)),const Spacer(),ElevatedButton(
            style:ElevatedButton.styleFrom(backgroundColor: Colors.white,elevation: 0)
          ,onPressed: (){}, child: const Text('See more >',style: TextStyle(color: Colors.greenAccent,fontSize: 14,fontWeight: FontWeight.w600),),)
              ],),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(width: 150,padding: const EdgeInsets.all(20),color:const Color(0xFFF9F5FF),
              child: Row(children: [
                Image.asset('lib/images/Relaxation.png'),const Text('Relaxation',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)
              ],),
            ),
             Container(width: 150,padding: const EdgeInsets.all(20),color:const Color(0xFFFDF2FA),
              child: Row(children: [
                Image.asset('lib/images/Meditation.png'),const Text('Meditation',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)
              ],),
            ),
          ],
              ),const SizedBox(height: 16,), Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(width: 150,padding: const EdgeInsets.all(20),color:const Color(0xFFFFFAF5),
              child: Row(children: [
                Image.asset('lib/images/Beathing.png'),const Text('Beathing',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)
              ],),
            ),
             Container(width: 150,padding: const EdgeInsets.all(20),color:const Color(0xFFF0F9FF),
              child: Row(children: [
                Image.asset('lib/images/Yoga.png') ,const Text('Yoga',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)
              ],),
            ),
          ],
              ),
              ],
            
          ),
        );
  }
}
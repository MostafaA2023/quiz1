import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouSelOptions extends StatelessWidget {
  const CarouSelOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
    options: CarouselOptions(),
    items: [1,2,3].map((i) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          color: const Color(0xFFECFDF3),child: Row(children:
           [ Column(crossAxisAlignment: CrossAxisAlignment.start,children: [const Text('Positive vibes',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600)
              ,),const Text('Boost your mood with',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400)),
              const Text('positive vibes',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400)),
              ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor: const Color(0xFFECFDF3),elevation: 0),onPressed: (){},
               child:const Row(
           children: [
             Icon(Icons.play_circle,color:  Color(0xFF32D583),),SizedBox(width: 8,),Text('10 mins',style: TextStyle( color: Colors.black,fontSize: 14,fontWeight: FontWeight.w500))
           ],
               ),)],),
              Image.asset("lib/images/Walking the Dog.png",fit:BoxFit.cover,)],),
          
        );
      },
    );
    }).toList(),
  );
  }
}
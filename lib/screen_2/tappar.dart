import 'package:flutter/material.dart';

void main() => runApp(const TabBarApp());

class TabBarApp extends StatelessWidget {
  const TabBarApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Expanded(
        child: Scaffold(
          appBar: AppBar(backgroundColor:  Colors.white,toolbarHeight: 5,
            centerTitle: true,
            
            
            bottom: const TabBar(labelColor: Colors.blueGrey,
              tabs: [
                Tab(text: 'All Type'),
                Tab(text: 'Full Body'),
                Tab(text: 'Upper'),
                Tab(text: 'Lower',),
              ],
            ),

          ),
          body:  TabBarView(
            children: [
              Column(
                children: [
                  Container(padding: const EdgeInsets.only(left: 20,top: 10),
                          color: const Color(0xFFEAECF5),child: Row(children:
                           [ Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                            Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.white),
                             child: const Text(' 7 days',
                             style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500)
                                           ,),
                           ),const Text('Morning Yoga',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600)),
                  const Text('Improve mental focus.',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400)),
                  ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor: const Color(0xFFECFDF3),elevation: 0),onPressed: (){},
                   child:const Row(
                           children: [
                             Icon(Icons.play_circle,color:  Color(0xFF32D583),),SizedBox(width: 8,),
                             Text('30 mins',style: TextStyle( color: Colors.black,fontSize: 12,fontWeight: FontWeight.w400))
                           ],
                   ),)],),
                  Image.asset("lib/images/[removal 2.png",fit:BoxFit.cover,)],),
                          
                        ),const SizedBox(height: 10,) ,Container(padding: const EdgeInsets.only(left: 20,top: 10),
                          color: const Color(0xFFEAECF5),child: Row(children:
                           [ Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                            Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.white),
                             child: const Text(' 3 days',
                             style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500)
                                           ,),
                           ),const Text('Plank Exercise',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600)),
                  const Text('Improve posture and stability.',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400)),
                  ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor: const Color(0xFFECFDF3),elevation: 0),onPressed: (){},
                   child:const Row(
                           children: [
                             Icon(Icons.play_circle,color:  Color(0xFF32D583),),SizedBox(width: 8,),
                             Text('30 mins',style: TextStyle( color: Colors.black,fontSize: 12,fontWeight: FontWeight.w400))
                           ],
                   ),)],),
                  Image.asset("lib/images/pngwing 1.png",fit:BoxFit.cover,)],),
                          
                        )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
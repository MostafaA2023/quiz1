import 'package:flutter/material.dart';
import 'package:quiz1/screen_3/tappar_1.dart';

class Insights extends StatelessWidget {
  const Insights({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextFormField(decoration:  InputDecoration(border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15.0), 
    ),
      hintText: 'Articles, Video, Audio and More,...',prefixIcon: const Icon(Icons.search,color: Colors.grey,),
      labelStyle: const TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w400))),
      Tabar()
    ],);
  }
}
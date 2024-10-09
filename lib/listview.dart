import 'package:flutter/material.dart';

class Listview1 extends StatefulWidget {
  const Listview1({super.key});

  @override
  State<Listview1> createState() => _Listview1State();
}

class _Listview1State extends State<Listview1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context,int index){
     return Padding(
       padding: const EdgeInsets.all(8.0),
       child: Container(
        height: 50,
        color: Colors.yellow,
       ),
     );
      }
    ));
    
  }
}
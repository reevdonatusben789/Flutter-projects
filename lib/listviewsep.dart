import 'package:flutter/material.dart';

class Listviewsep extends StatefulWidget {
  const Listviewsep({super.key});

  @override
  State<Listviewsep> createState() => _ListviewsepState();
}

class _ListviewsepState extends State<Listviewsep> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(itemBuilder: (context,index){
        return Container(
          height: 40,
          width: 50,
          color: Colors.black,
        );
      }, separatorBuilder: (context,index){
        return Container(
          height: 30,
          width: 40,
          color: Colors.blue,
        );
      }, itemCount: 10),
    );
  }
}
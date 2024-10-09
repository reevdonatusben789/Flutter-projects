import 'package:flutter/material.dart';
import 'package:newprojectflutter/newapp/lastpage.dart';

class Imagebutton extends StatefulWidget {
  const Imagebutton({super.key});

  @override
  State<Imagebutton> createState() => _ImagebuttonState();
}

class _ImagebuttonState extends State<Imagebutton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
  padding: const EdgeInsets.all(8),
  children: <Widget>[
    Container(
      height: 100,
      color: Colors.amber[600],
      child: const Center(child: Text('Entry A')),
    ),
    Container(
      height: 100,
      color: Colors.amber[500],
      child: const Center(child: Text('Entry B')),
    ),
    Container(
      height: 100,
      color: Colors.amber[100],
      child: const Center(child: Text('Entry C')),
    ),
      Container(
      height: 100,
      color: Colors.amber[500],
      child: const Center(child: Text('Entry B')),
    ),
   
    Container(
      height: 100,
      color: Colors.amber[100],
      child: const Center(child: Text('Entry C')),
    ),
     Container(
      height: 100,
      color: Colors.amber[100],
      child: const Center(child: Text('Entry C')),
    ),

     Container(
      height: 100,
      color: Colors.amber[100],
      child: const Center(child: Text('Entry C')),
    ),
     Container(
      height: 100,
      color: Colors.amber[100],
      child: const Center(child: Text('Entry C')),
    ),
     Container(
      height: 100,
      color: Colors.amber[100],
      child: const Center(child: Text('Entry C')),
    ),
     Container(
      height: 100,
      color: Colors.amber[100],
      child: const Center(child: Text('Entry C')),
    ),
     Container(
      height: 100,
      color: Colors.amber[100],
      child: const Center(child: Text('Entry C')),
    ),
     Container(
      height: 100,
      color: const Color.fromARGB(255, 23, 118, 186),
      child: const Center(child: Text('Entry C')),
    ),

  ],
),
    );
  }
}
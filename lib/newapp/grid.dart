import 'package:flutter/material.dart';

class grid1 extends StatefulWidget {
  const grid1({super.key});

  @override
  State<grid1> createState() => _grid1State();
}

class _grid1State extends State<grid1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(crossAxisCount: 4,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.red,
            ),
          ),
          Container(
            color: Colors.yellow,
          ),
          Container(
            color: Colors.green,
          ),
         Container(
          color: Colors.blue,
         ) ,
         Container(
          color: Colors.blueGrey,
         )
        ],),
      ),
    );
  }
}
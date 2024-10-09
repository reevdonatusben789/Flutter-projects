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
      body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3), childrenDelegate: SliverChildListDelegate([
          Container(
            color: Colors.blue,
          )
        ])),
    );
  }
}
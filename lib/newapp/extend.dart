import 'package:flutter/material.dart';

class ext extends StatelessWidget {
  const ext({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(maxCrossAxisExtent: 200,children: [
        Container(
          color: Colors.black,
        ),
        Container(
          color: Colors.purple,
        ),
        Container(
          color: Colors.blue,
        ),
        Container(
          color: const Color.fromARGB(255, 210, 43, 43),
        )
      ],),
    );
  }
}
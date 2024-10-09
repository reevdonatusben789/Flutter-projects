import 'package:flutter/material.dart';

class MyColoumn extends StatelessWidget {
  const MyColoumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.red,
            height: 300,
          ),
          Expanded(
            child: Container(
              color: Colors.yellow,
              // height: 40,
            ),
          ),
            Container(
            color: Colors.red,
            height: 30,
          ),
        ],
      ),
    );
  }
}
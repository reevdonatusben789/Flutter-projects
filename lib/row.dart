import 'package:flutter/material.dart';

class MyRow extends StatelessWidget {
  const MyRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Row(
        children: [
          Flexible(
            flex:5 ,
            child: Container(
            color: Colors.red,
            // height: 100,
            // width: 100,
          )),
          const SizedBox(width:10),
         Flexible(
            flex:3 ,
            child: Container( 
            color: Colors.blue,
            // height: 100,
            // width: 100,
          )),
        ],
      ) ,
    );
  }
}
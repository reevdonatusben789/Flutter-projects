import 'package:flutter/material.dart';

class bluidergrid extends StatefulWidget {
  const bluidergrid({super.key});

  @override
  State<bluidergrid> createState() => _bluidergridState();
}

class _bluidergridState extends State<bluidergrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
         itemBuilder: (BuildContext context,int index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.amber,
            ),
          );
         }),
    );
  }
}
import 'package:flutter/material.dart';

class listcust extends StatelessWidget {
  const listcust({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.custom(childrenDelegate: SliverChildListDelegate([
        Padding(
          
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.amber,
            height: 300,
            width: 200,
          ),
        ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
            color: const Color.fromARGB(255, 21, 137, 191),
            height: 300,
            width: 200,
                   ),
         ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
            color: const Color.fromARGB(255, 20, 207, 126),
            height: 300,
            width: 200,
                   ),
         )
      ])),

    );
  }
}
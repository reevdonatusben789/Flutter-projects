import 'package:flutter/material.dart';

class newtext extends StatefulWidget {
  const newtext({super.key});

  @override
  State<newtext> createState() => _newtextState();
}

class _newtextState extends State<newtext> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                icon: const Icon(Icons.open_in_new_rounded),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(9),
                ),
                hintText: 'type here',
              ),
              autocorrect: true,
            ) //TextField(
            //decoration: InputDecoration(
            //border: OutlineInputBorder(
            //borderRadius: BorderRadius.circular(10)),
            //hintText: "Username"
            ));
  }
}
       // ),
     // ),
   // );
 // }
//}
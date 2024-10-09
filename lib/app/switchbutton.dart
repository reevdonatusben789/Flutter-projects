
import 'package:flutter/material.dart';

class Switchbutton extends StatefulWidget {
  const Switchbutton({super.key});

  @override
  State<Switchbutton> createState() => _SwitchbuttonState();
}

class _SwitchbuttonState extends State<Switchbutton> {
  bool offstate = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center( 
          child: Switch(
            activeTrackColor: Colors.amber,
            activeColor: const Color.fromARGB(255, 0, 0, 0),
            value: offstate, onChanged: (bool onstate){
            setState(() {
              offstate = onstate;
            });
          }
         ),
        ),
      )
    );
  }
}
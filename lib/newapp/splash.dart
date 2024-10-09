import 'dart:async';

import 'package:flutter/material.dart';
import 'package:newprojectflutter/newapp/checkbox.dart';
import 'package:newprojectflutter/newapp/lottie.dart';

class Splash1 extends StatefulWidget {
  const Splash1({super.key});

  @override
  State<Splash1> createState() => _Splash1State();
}

class _Splash1State extends State<Splash1> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Lottie1()));    
      });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
       return Scaffold(
      body: Center(child: Icon(Icons.access_alarm_outlined,size:100)),
    );
  }
}
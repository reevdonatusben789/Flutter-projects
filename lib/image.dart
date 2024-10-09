import 'package:flutter/material.dart';

class Myimage extends StatelessWidget {
  const Myimage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: 
      // Image.asset('')
      Image(
        // height: 100,
        image: AssetImage('assets/images/backiee-194612-landscape.jpg')),
    );
  }
}
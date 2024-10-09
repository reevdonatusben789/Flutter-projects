import 'package:flutter/material.dart';

class Homenew extends StatelessWidget {
   Homenew({super.key,required this.displayemail});
  String displayemail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(displayemail),
    );
  }
}
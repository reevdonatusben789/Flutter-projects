import 'package:flutter/material.dart';

class check extends StatefulWidget {
  const check({super.key});

  @override
  State<check> createState() => _checkState();
}

class _checkState extends State<check> {
  bool? isselected= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Checkbox(value: isselected, onChanged:(bool? newvalue){setState(() {
        isselected =newvalue;
      });}),
    );
  }
}
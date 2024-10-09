import 'package:flutter/material.dart';

class Mynet extends StatelessWidget {
  const Mynet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.network('https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg'),
    );
  }
}
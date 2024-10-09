import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Lottie1 extends StatefulWidget {
  const Lottie1({super.key});

  @override
  State<Lottie1> createState() => _Lottie1State();
}

class _Lottie1State extends State<Lottie1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:Center(child: LottieBuilder.network(
      width: 2000,
      height: 2000,
      'https://lottie.host/2857ef3c-b13f-4d73-a38b-2f17d0ea9c09/4dgcydbk6S.json')) 
     //LottieBuilder.asset('assets/animation/Animation - 1726769176555.json'),
    );
  }
}
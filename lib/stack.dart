import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('stack')),
      body: Center(
        child: Stack(
          children: [
            Container(
              color: Colors.purple,
              height: 250,
              width: 300,
            ),
            Positioned(
              top: 100,
              left: 90,
              child: Container(
                color: Colors.red,
                height: 200,
                width: 100,
              ),
            ),
            Positioned(
              top:130 ,
              left: 120,
              child: Container(
                color: Colors.blue,
                height: 30,
                width: 20,
              ),
            )
            
          ],
        ),
      ),
    );
  }
}
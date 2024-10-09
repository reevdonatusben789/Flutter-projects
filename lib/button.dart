import 'package:flutter/material.dart';

class newfilebu extends StatefulWidget {
  const newfilebu({super.key});

  @override
  State<newfilebu> createState() => _newfilebuState();
}

class _newfilebuState extends State<newfilebu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(onPressed: (){
     Navigator.pop(context);
      }, child: const Text('back')),
    );
  }
}
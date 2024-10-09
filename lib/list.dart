import 'package:flutter/material.dart';

class List1 extends StatefulWidget {
  const List1({super.key});

  @override
  State<List1> createState() => _List1State();
}

class _List1State extends State<List1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
       body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context,int index){
     return Padding(
       padding: const EdgeInsets.all(8.0),
       child: Image.network('https://images.ctfassets.net/hrltx12pl8hq/28ECAQiPJZ78hxatLTa7Ts/2f695d869736ae3b0de3e56ceaca3958/free-nature-images.jpg?fit=fill&w=1200&h=630',
       height: 200,
       width: 200),
     );
  }),
    );
  }
  }

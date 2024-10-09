import 'package:flutter/material.dart';

class Alert1 extends StatefulWidget {
  const Alert1({super.key});

  @override
  State<Alert1> createState() => _Alert1State();
}

class _Alert1State extends State<Alert1> {
  void Alertdart(BuildContext context){
   showDialog(context: context, builder:(BuildContext context)
   {
    return AlertDialog(
      titleTextStyle: TextStyle(
        fontStyle: FontStyle.italic,
        fontSize: 50,
      ),
      shadowColor: Colors.blueAccent,
      title: Text('Alert'),
      icon: Icon(Icons.access_alarm),
      iconColor: Colors.amber,
      actions: [
        TextButton(onPressed: (){
          Navigator.of(context).pop();
        }, child: Text('Yes')),
        TextButton(onPressed: (){
          Navigator.of(context).pop();
        }, child: Text('no'))
      ],
    );
   }
   );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: ElevatedButton(onPressed: (){
        Alertdart(context);
      }, child: Text('data'))),
    );
  }
}
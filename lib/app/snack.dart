import 'package:flutter/material.dart';

class Snack extends StatefulWidget {
  const Snack({super.key});

  @override
  State<Snack> createState() => _SnackState();
}

class _SnackState extends State<Snack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.all(10),
            // padding: EdgeInsets.all(20),
            content: Row(
              children: [
                Text('data'),
                SizedBox(
                  width: 50,
                ),
                Icon(Icons.thumb_up_sharp),
              ],
            ),backgroundColor: Colors.blue,
           duration: Duration(seconds: 4),
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),)
           ,));
        }, child: Text('SnackBar')),
      ),
    );
  }
}
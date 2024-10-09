import 'package:flutter/material.dart';

class Myclass extends StatelessWidget {
  const Myclass({super.key});

  @override
  Widget build(BuildContext context)
   {
    return Scaffold(
      appBar: AppBar(
        actions: const [Icon(Icons.access_time_filled),
        SizedBox(width:50,),
        Padding(
          padding: EdgeInsets.only(right: 20,top: 30,bottom:40,left:20),
          child: Icon(Icons.ac_unit_outlined),
        )],
        backgroundColor: Colors.blue,
        leading: const Icon(Icons.add_business),
        title: const Text('MY APP'),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 40,
          color: Color.fromARGB(255, 235, 8, 8),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(
            flex: 2,
            child: Container(
              color: Colors.red,
              width: double.infinity, 
              child: const Icon(Icons.access_alarm,size: 70,),
            ),
          ),
          Spacer(

          ),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.yellow,
              width: double.infinity,
              child: const Center(child: Text('data',style: TextStyle(fontSize: 40)))
              
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MyAssignment extends StatelessWidget {
  const MyAssignment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Flexible(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.red,
                    height: 150,
                    ),
                ),
              ),
                           Flexible(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.red,
                  height: 150,
                ),
              ),
            ) 
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.blue,
                  height: 180,
                  width: 358,
                ),
              )
            ],
          ),
          Row(
            children: [
              Flexible
              (
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.red,
                    height: 150,
                  ),
                ),
              ),
              Flexible(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.red,
                    height: 150,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Flexible(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.green,
                    height: 120,
                  ),
                ),
              ),
               Flexible(
                flex: 2,
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                    color: Colors.green,
                    height: 120,
                                 ),
                 ),
               ),
               Flexible(
                flex: 2,
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                    color: Colors.green,
                    height: 120,
                                 ),
                 ),
               )
            ],
          )
        ],
      ),
        
    );
  }
}
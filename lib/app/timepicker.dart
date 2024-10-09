import 'package:flutter/material.dart';

class Timepic extends StatefulWidget {
  const Timepic({super.key});

  @override
  State<Timepic> createState() => _TimepicState();
}

class _TimepicState extends State<Timepic> {

  final timecontroller =TextEditingController();
  TimeOfDay currenttime =TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: TextFormField(
                controller: timecontroller,
                decoration: const InputDecoration(
                      labelText: 'Date picker', border: OutlineInputBorder()),
                  ),
            ),
          ),
       ElevatedButton(onPressed: () => disTimePicker(context), child: Text("Pick Time"))
        ],
      ));
  
  }
  Future disTimePicker(BuildContext context)async{
    var timepick = await showTimePicker(context: context, initialTime:currenttime);
    if(timepick != null){
      setState(() {
        timecontroller.text = "${timepick.hour}:${timepick.minute}";
      });
    }
  }
}
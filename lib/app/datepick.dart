import 'package:flutter/material.dart';

class Datepick extends StatefulWidget {
  const Datepick({super.key});

  @override
  State<Datepick> createState() => _DatepickState();
}

class _DatepickState extends State<Datepick> {
  final datecontroller = TextEditingController();
  DateTime selected = DateTime.now();
  DateTime firstDate = DateTime(2000);
  DateTime lastDate = DateTime(2026);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            controller: datecontroller,
            decoration: InputDecoration(
              labelText: "Date",
              border: OutlineInputBorder()
            ),
          ),
        ElevatedButton(onPressed: ()=> displaydate(context), child: Text("Date Pick"))
        ],
      ),
    );
  }
  Future displaydate (BuildContext context) async{
    var date = await showDatePicker(context: context, initialDate: selected ,firstDate: firstDate,lastDate: lastDate);
    if(date != null){
      final day = date.day.toString().padLeft(2,'0');
      final month = date.month.toString().padLeft(2,'0');
      final year = date.year.toString();
      final formattedDate = '$day/$month/$year';
      datecontroller.text = formattedDate;
    }

  }
  }

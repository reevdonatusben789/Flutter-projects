import 'package:flutter/material.dart';

class Ques extends StatefulWidget {
  const Ques({super.key});

  @override
  State<Ques> createState() => _QuesState();
}

class _QuesState extends State<Ques> {
  bool isSelected = false;
  bool isNoSelected = false;
  bool isBothSelected = false;
  bool isNoneSelected = false;

  void _onCheckboxChanged(int index) {
    setState(() {
      isSelected = false;
      isNoSelected = false;
      isBothSelected = false;
      isNoneSelected = false;
      switch (index) {
        case 0:
          isSelected = true;
          break;
        case 1:
          isNoSelected = true;
          break;
        case 2:
          isBothSelected = true;
          break;
        case 3:
          isNoneSelected = true;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Do you prefer Dart language?'),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Checkbox(
                  value: isSelected,
                  onChanged: (bool? value) {
                    if (value == true) _onCheckboxChanged(0);
                  },
                ),
              ),
              Text('Yes'),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Checkbox(
                  value: isNoSelected,
                  onChanged: (bool? value) {
                    if (value == true) _onCheckboxChanged(1);
                  },
                ),
              ),
              Text('No'),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Checkbox(
                  value: isBothSelected,
                  onChanged: (bool? value) {
                    if (value == true) _onCheckboxChanged(2);
                  },
                ),
              ),
              Text('Both'),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Checkbox(
                  value: isNoneSelected,
                  onChanged: (bool? value) {
                    if (value == true) _onCheckboxChanged(3);
                  },
                ),
              ),
              Text("None of the above"),
            ],
          ),
        ],
      ),
    );
  }
}

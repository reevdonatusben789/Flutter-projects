import 'package:flutter/material.dart';

class Textform extends StatefulWidget {
  const Textform({super.key});

  @override
  State<Textform> createState() => _TextformState();
}

class _TextformState extends State<Textform> {
  final itemkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Form(
              key: itemkey,
              child: TextFormField(
                validator: (value) {
                  if(value == null || value.isEmpty){
                   return "Error";
                  }
                  else if(value.length<6){
                    return "must need 6 letters";
                  }else if(!value.contains(RegExp("A-Z"))){
                    return"must be uppercase";
                  }
                  else if(!value.contains(RegExp("1-9"))){
                    return"must need numbers";
                  }
                  else{
                    return null;
                  }
                },
                
                decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                hintText:'Input'
                ),
              ),
            )),
          ),
          ElevatedButton(onPressed: (){
            if(itemkey.currentState!.validate()){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('data')));
            }
          }, child: Text("Button"))
        // Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: TextFormField(

        //   ),
        // )
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class Formtext extends StatefulWidget {
  const Formtext({super.key});

  @override
  State<Formtext> createState() => _FormtextState();
}

class _FormtextState extends State<Formtext> {
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 93, 92, 92),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(key: formkey,
              child: TextFormField(
                validator: (value) {
                  if(value == null || value.isEmpty){
                    return "not valid";
                  }else if(!value.contains(RegExp("A-Z"))){
                    return "need Capital letters";
                  }
                  else if(value.contains(RegExp(" "))){
                    return"no space allowed";
                  }
                },
              ),
            ),
          ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(onPressed: (){
             if(formkey.currentState!.validate())
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("data")));
          }, child: Text("Button")),
        )
        ],
      ),
    );
  }
}
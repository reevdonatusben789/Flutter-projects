import 'package:flutter/material.dart';
import 'package:newprojectflutter/assign.dart';

class regis extends StatefulWidget {
  const regis({super.key});

  @override
  State<regis> createState() => _regisState();
}

class _regisState extends State<regis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(style: TextStyle(fontSize: 40,color:Colors.black),'SignUp')),
        const Text('create account'),
        const SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Email',
              prefixIcon: const Icon(Icons.perm_identity),
               border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
            )
            )),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Password',
              prefixIcon: const Icon(Icons.email),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
          )
                )),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Confirm Password',
              prefixIcon: const Icon(Icons.lock),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                ),
                )
                ),
        ),
        const SizedBox(height: 20,),
         ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 30, 196, 15),
                  minimumSize: const Size(300, 60),foregroundColor: Colors.white),
                  onPressed: (){}, child: const Text('Login')),
                  const SizedBox(height: 20,),
        TextButton(onPressed: (){ Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const loginpage()));}, child:const Text('sign up'))
        ],
      ),
    );
  }
}
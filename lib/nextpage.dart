import 'package:flutter/material.dart';
import 'package:newprojectflutter/button.dart';
import 'package:newprojectflutter/register.dart';

class Nextpage extends StatefulWidget {
  const Nextpage({super.key});

  @override
  State<Nextpage> createState() => _NextpageState();
}

class _NextpageState extends State<Nextpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(child: Text('Login',style: TextStyle(fontSize: 40),)),
          const SizedBox(height: 10),
        const Text('Welcome back !Login with your  credentials'),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.perm_identity),
              labelText: 'Email ID',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7),
              ),
          
          )
                ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.enhanced_encryption),
              labelText:'Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7),
          )
          )  ),
        ),
        const SizedBox(height: 10),
         ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 30, 196, 15),
                  minimumSize: const Size(300, 60),foregroundColor: Colors.white),
                  onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const newfilebu()));
                  }, child: const Text('Login')),
                  const SizedBox(height: 20,),
                  TextButton(onPressed: (){
                     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const regis()));
                  }, child: const Text('new user Signup now !!'))
  ]),

    );
  }
}
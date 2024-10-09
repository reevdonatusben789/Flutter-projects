import 'package:flutter/material.dart';
import 'package:newprojectflutter/newapp/home.dart';
import 'package:newprojectflutter/newapp/lastpage.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

TextEditingController emailcontrol=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 13, 114),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(onPressed: (){}, child: Text('Back')),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 40),
                  Text('Lets Get Started',
                     style: TextStyle(fontSize: 40, color: const Color.fromARGB(255, 247, 244, 244),fontWeight: FontWeight.bold)
                  ),
                  SizedBox(height: 80),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    child: TextField(
                      controller: emailcontrol,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.mail),
                        labelText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                      )
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        labelText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                      )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(onPressed: (){}, child: Text('Remember me'))
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 208, 15, 115),
                          minimumSize: const Size(300, 60),
                          foregroundColor: Colors.white
                        ),
                        onPressed: (){
                          String email=emailcontrol.text;
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Homenew(displayemail: email,)));
                        }, 
                        child: const Text('Login')
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: TextButton(onPressed: (){}, child: Text('Dont have an account?',style: TextStyle(color: Colors.white),))),
          )
          ],
        ),
      ),
    );
  }
}
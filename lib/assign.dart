import 'package:flutter/material.dart';
import 'package:newprojectflutter/nextpage.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(child: Text('HELLO THERE !',style: TextStyle(fontSize: 38,color:Colors.black),)),
        const Padding(
          padding:  EdgeInsets.all(8.0),
          child: Center(child: Text('Automatically identifies verifications')),
        ),
        Image.network('https://static.vecteezy.com/system/resources/thumbnails/003/689/228/small/online-registration-or-sign-up-login-for-account-on-smartphone-app-user-interface-with-secure-password-mobile-application-for-ui-web-banner-access-cartoon-people-illustration-vector.jpg'),
        const SizedBox(
          height: 20,
        ),
         ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 126, 236, 82),
                  minimumSize: const Size(300, 60),foregroundColor: Colors.white),
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Nextpage()));
                  }, 
                  child: const Text('Login')),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 95, 226, 83),
                  minimumSize: const Size(300, 60),foregroundColor: Colors.white),
                  onPressed: (){}, child: const Text('SignUp')),
        ],
      ),
    );
  }
}
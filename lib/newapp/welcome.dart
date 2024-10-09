import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Top section with brand name and logo
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Brand Name',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Divider(
            height: 20,
            thickness: 5,
            indent: 20,
            endIndent: 0,
            color: Colors.black,
          ),
                SizedBox(width: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                    'https://png.pngtree.com/element_pic/16/11/03/dda587d35b48fd01947cf38931323161.jpg',
                    height: 60,
                    width: 60,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text('Some of yours text',style: TextStyle(fontSize: 50),),
          ),
          SizedBox(
              height: 70,
          ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 214, 38, 144),
                    minimumSize: const Size(300, 60),foregroundColor: Colors.white),
                    onPressed: (){}, 
                    child: const Text('Login')),
        ),
        SizedBox(
          height: 40
        ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 214, 38, 144),
                    minimumSize: const Size(300, 60),foregroundColor: Colors.white),
                    onPressed: (){}, 
                    child: const Text('Login')),
                  ),
        ],
      ),
    );
  }
}

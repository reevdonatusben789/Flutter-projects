import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class register2 extends StatefulWidget {
  const register2({super.key});

  @override
  State<register2> createState() => _register2State();
}

class _register2State extends State<register2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 93, 106, 205),
      body: Column(
        
        mainAxisAlignment: MainAxisAlignment.start,
children: [
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(onPressed: (){}, child: Text('Back',style: TextStyle(color: Colors.white),)),
          ),
          SizedBox(
            width: 230,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network('https://cdn-icons-png.flaticon.com/512/1384/1384063.png',width: 60,height: 60,),
          )

        ],
      ),
      SizedBox(
        height: 100,
      ),
   Text('Join Us Now !!',style: TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.bold
   ),),
   SizedBox(
    height: 50,
   ),
   Padding(
     padding: const EdgeInsets.all(8.0),
     child: TextField(
      decoration: InputDecoration(
        hintText: 'Username',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20)
        )
      ),
     ), 
   ),
   Padding(
     padding: const EdgeInsets.all(8.0),
     child: TextField(
        decoration: InputDecoration(
        hintText: 'Password',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20)
          ))),
   ),
   SizedBox(
    height: 30,
   ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 196, 15, 145),
                    minimumSize: const Size(300, 60),foregroundColor: Colors.white),
                    onPressed: (){}, child: const Text('Register')),
    ),
                  const SizedBox(height: 20,),
                  // VerticalDivider(
                  //   color: Colors.black,
                  //   thickness: 30,
        Container(
          width: 300,
          height: 2,
          color:const Color.fromARGB(255, 62, 60, 60)),
    Center(child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('Social sign up'),
    )),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
                      icon: FaIcon(FontAwesomeIcons.facebook),
                      iconSize: 40,
                      onPressed: () {},),
                      SizedBox(
                        height: 60,
                      ),
         IconButton(
                      icon: FaIcon(FontAwesomeIcons.twitter),
                      iconSize: 60,
                      onPressed: () {},),   
            IconButton(
                      icon: FaIcon(FontAwesomeIcons.instagram),
                      iconSize: 60,
                      onPressed: () {},),                      
        ],
      )
   ]
    )
    );
  }
}
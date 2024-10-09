import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newprojectflutter/whatsapp/Calls.dart';
import 'package:newprojectflutter/whatsapp/Community.dart';
import 'package:newprojectflutter/whatsapp/Status.dart';
import 'package:newprojectflutter/whatsapp/chats.dart';

class Whatsapptab extends StatefulWidget {
  const Whatsapptab({super.key});

  @override
  State<Whatsapptab> createState() => _WhatsapptabState();
}

class _WhatsapptabState extends State<Whatsapptab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
         backgroundColor: const Color.fromARGB(255, 235, 235, 235),
          appBar: AppBar(
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FaIcon(FontAwesomeIcons.camera),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.search),
              ),
             PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(  
                  // value: 1,  
                  child: Row(  
                    children: [
                      Icon(Icons.star),
                      SizedBox(
                        width: 10, 
                      ),
                      Text("About")
                    ],
                  ),
                ),
                PopupMenuItem( 
                  // value: 2,
                  child: Row( 
                    children: [
                      Icon(Icons.chrome_reader_mode),
                      SizedBox(
                        width: 10, 
                      ),
                      Text("Select Chats")
                    ],
                  ),
                ),
              ],
              offset: Offset(10, 30),
              color: const Color.fromARGB(255, 255, 255, 255),
              elevation: 1,
            ),
          ],
            backgroundColor: const Color.fromARGB(255, 20, 164, 73),
            title: 
            Text('Whatsapp',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            bottom: TabBar(tabs: 
            [
              Icon(Icons.group),
            Text('Chats'),
              Text('Status'),
              Text('Calls')
              ]),
          
        ),
        body: TabBarView(children: [
          Community(),
        Chats1(),
        Status1(),
        Calls1(),
        ]),

    )
    );
  }
}
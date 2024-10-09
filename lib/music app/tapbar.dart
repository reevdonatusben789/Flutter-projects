import 'package:flutter/material.dart';
import 'package:newprojectflutter/music%20app/Artist.dart';
import 'package:newprojectflutter/music%20app/select.dart';
import 'package:newprojectflutter/newapp/welcome.dart';
import 'package:newprojectflutter/whatsapp/Status.dart';
import 'package:newprojectflutter/whatsapp/chats.dart';

class Tapbar1 extends StatefulWidget {
  const Tapbar1({super.key});

  @override
  State<Tapbar1> createState() => _Tapbar1State();
}

class _Tapbar1State extends State<Tapbar1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('TapBar'),
          bottom: TabBar(
            tabs: [
            Icon(Icons.chat),
            Icon(Icons.search),
            Icon(Icons.access_alarm),
          ]),
        ),
        body:TabBarView(children: [
          Chats1(),
          Chats1(),
          Status1(),
        ]) ,
      ),
    );
  }
}
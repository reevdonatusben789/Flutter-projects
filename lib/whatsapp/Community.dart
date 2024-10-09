import 'package:flutter/material.dart';
import 'package:newprojectflutter/music%20app/Artist.dart';
import 'package:newprojectflutter/music%20app/select.dart';
import 'package:newprojectflutter/newapp/welcome.dart';

class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  List<String>images1=['https://static.qobuz.com/images/covers/06/29/0841811132906_600.jpg'];
  List<String>text1=['Reev'];
  List<String>message=['Hello'];
 
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: text1.length,
            itemBuilder: (BuildContext context,int index){
             return
             Padding(
               padding: const EdgeInsets.all(4.0),
               child: ListTile(
                title: Text(text1[index]),
                subtitle: Text(message[index]),
                trailing: Column(
                  children: [
                    Text('12:30pm'),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      
                    ),
                  ],
                ),
                tileColor: const Color.fromARGB(255, 255, 254, 254),
                leading: Padding(
                  padding: const EdgeInsets.only(bottom: 9),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(images1[index]),
                  ),
                ),
               ),
             );
            }
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: (){},
        child: Icon(Icons.message),
      ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
       
        );
      
  }
}
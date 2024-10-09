import 'package:flutter/material.dart';
import 'package:newprojectflutter/music%20app/Artist.dart';
import 'package:newprojectflutter/music%20app/select.dart';
import 'package:newprojectflutter/newapp/welcome.dart';

class Chats1 extends StatefulWidget {
  const Chats1({super.key});

  @override
  State<Chats1> createState() => _Chats1State();
}

class _Chats1State extends State<Chats1> {
  List<String>names2=['Alan','Akash','Sharon','Albert','Johns','Diya','Arya','Don','Reev','Ron'];
  List<String>images2=['https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYKtsLeSFjipjsSNtNsqONmBhbJHvpFeBb4g&s','https://static.qobuz.com/images/covers/06/29/0841811132906_600.jpg','https://cdn.motor1.com/images/mgl/MkO9NN/s3/future-supercars.jpg','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHt_MfFJuDiVPgX-dCNjVFyzJq1IThjFz1yg&s','https://www.imagella.com/cdn/shop/products/5d050236a343b009fa557c91d53b8d6d.jpg?v=1707572829','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7hNNxtCfT7urIr09JcL2C9MqyOnWwqPg7Eg&s','https://mrwallpaper.com/images/thumbnail/whatsapp-dp-king-crown-vqatycrlgoyrw1s0.webp','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8zBvjsrlFnZW8B047Bn2IXE-7sER7MhrPaQ&s','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYqwQ2wa09oC60WG-hdfCpMKXc8PFGTWZ2LDA4hI5G5Nf8ehlxDo3w4TooqF2xlOKimDA','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfc34dP-_-5Km9NA3xwu8ObPo7kucVJiLxXQ&sc'];
  List<String>msg2=['Hi','Call u back','Good','ahaha','Bye','hello how are u','yes','hmm','where are u','Thanks'];
  List<String>notification=['2','1','3','5','8','1','3','5','3','4'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: names2.length,
            itemBuilder: (BuildContext context,int index){
             return
             Padding(
               padding: const EdgeInsets.all(4.0),
               child: ListTile(
                title: Text(names2[index]),
                subtitle: Text(msg2[index]),
                trailing: Column(
                  children: [
                    Text('12:30pm'),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: CircleAvatar(
                        child: 
                        Text(notification[index],style: TextStyle(color: Colors.black),),
                        radius:12 ,
                        backgroundColor:const Color.fromARGB(255, 20, 164, 73),
                      ),
                    ),
                  ],
                ),
                tileColor: const Color.fromARGB(255, 255, 254, 254),
                leading: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(images2[index]),
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
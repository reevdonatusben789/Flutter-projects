import 'package:flutter/material.dart';
import 'package:newprojectflutter/music%20app/Artist.dart';
import 'package:newprojectflutter/music%20app/select.dart';
import 'package:newprojectflutter/newapp/welcome.dart';

class Calls1 extends StatefulWidget {
  const Calls1({super.key});

  @override
  State<Calls1> createState() => _Calls1State();
}

class _Calls1State extends State<Calls1> {
  List<String>names1=['Alan','Akash','Sharon','Albert','Johns','Diya','Arya','Don','Reev','Ron'];
  List<String>images3=['https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYKtsLeSFjipjsSNtNsqONmBhbJHvpFeBb4g&s','https://static.qobuz.com/images/covers/06/29/0841811132906_600.jpg','https://cdn.motor1.com/images/mgl/MkO9NN/s3/future-supercars.jpg','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHt_MfFJuDiVPgX-dCNjVFyzJq1IThjFz1yg&s','https://www.imagella.com/cdn/shop/products/5d050236a343b009fa557c91d53b8d6d.jpg?v=1707572829','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7hNNxtCfT7urIr09JcL2C9MqyOnWwqPg7Eg&s','https://mrwallpaper.com/images/thumbnail/whatsapp-dp-king-crown-vqatycrlgoyrw1s0.webp','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8zBvjsrlFnZW8B047Bn2IXE-7sER7MhrPaQ&s','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYqwQ2wa09oC60WG-hdfCpMKXc8PFGTWZ2LDA4hI5G5Nf8ehlxDo3w4TooqF2xlOKimDA','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfc34dP-_-5Km9NA3xwu8ObPo7kucVJiLxXQ&sc'];
  List<String>msg1=['Yesterday ,7:50 pm','5 min ago','7:00 am','1 year ago','5:00 pm','8:09 am','now','2 days ago','10:04 am'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: msg1.length,
            itemBuilder: (BuildContext context,int index){
             return
             Padding(
               padding: const EdgeInsets.all(4.0),
               child: ListTile(
                title: Text(names1[index]),
                subtitle: Text(msg1[index]),
                trailing: Icon(Icons.call),
                tileColor: const Color.fromARGB(255, 255, 254, 254),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(images3[index]),
                ),
               ),
             );
            }
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: (){},
        child: Icon(Icons.call_rounded),
      ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        );
      
  }
}
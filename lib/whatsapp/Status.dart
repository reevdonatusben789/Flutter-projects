import 'package:flutter/material.dart';

class Status1 extends StatefulWidget {
  const Status1({super.key});

  @override
  State<Status1> createState() => _Status1State();
}

class _Status1State extends State<Status1> {
  @override
  Widget build(BuildContext context) {
      List<String>names3=['Alan','Akash','Sharon','Albert','Johns','Diya','Arya','Don','Reev','Ron'];
  List<String>images1=['https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYKtsLeSFjipjsSNtNsqONmBhbJHvpFeBb4g&s','https://static.qobuz.com/images/covers/06/29/0841811132906_600.jpg','https://cdn.motor1.com/images/mgl/MkO9NN/s3/future-supercars.jpg','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHt_MfFJuDiVPgX-dCNjVFyzJq1IThjFz1yg&s','https://www.imagella.com/cdn/shop/products/5d050236a343b009fa557c91d53b8d6d.jpg?v=1707572829','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7hNNxtCfT7urIr09JcL2C9MqyOnWwqPg7Eg&s','https://mrwallpaper.com/images/thumbnail/whatsapp-dp-king-crown-vqatycrlgoyrw1s0.webp','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8zBvjsrlFnZW8B047Bn2IXE-7sER7MhrPaQ&s','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYqwQ2wa09oC60WG-hdfCpMKXc8PFGTWZ2LDA4hI5G5Nf8ehlxDo3w4TooqF2xlOKimDA','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfc34dP-_-5Km9NA3xwu8ObPo7kucVJiLxXQ&sc'];
  List<String>msg3=['12:14pm','10:10pm','9:17pm','7:00am','9:00am','12:14pm','7:00am','10:10pm','5:40pm','8:00am'];
    return Scaffold(
        body: 
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
              itemCount: images1.length,
              itemBuilder: (BuildContext context,int index){
               return
               Padding(
                 padding: const EdgeInsets.all(4.0),
                 child: ListTile(
                  title: Text(names3[index]),
                  subtitle: Text(msg3[index]),
                  trailing: Column(
                  ),
                  tileColor: const Color.fromARGB(255, 255, 254, 254),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(images1[index]),
                  ),
                 ),
               );
              }
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          // mainAxisAlignment: MainAxisAlignment.,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.teal,
              onPressed: (){},
              child: Icon(Icons.message),
            ),
         SizedBox(
          height: 20,
         ),
FloatingActionButton(backgroundColor: Colors.grey,onPressed: (){},
child: Icon(Icons.camera),)          ],
        ),
          // floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
          );
  
      
  }
}
  
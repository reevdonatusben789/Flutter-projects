import 'package:flutter/material.dart';

class BottomSheet1 extends StatefulWidget {
  const BottomSheet1({super.key});

  @override
  State<BottomSheet1> createState() => _BottomSheet1State();
}

class _BottomSheet1State extends State<BottomSheet1> {
  void showbottomsheet1(
    BuildContext context
  ){
    showModalBottomSheet(context: context, builder: (context){
      return Container(
        height: 300,
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Share",style: TextStyle(fontSize: 20),),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                  Image.network('https://upload.wikimedia.org/wikipedia/commons/5/5e/WhatsApp_icon.png',width: 80,height: 80,),
                  
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Instagram_icon.png/2048px-Instagram_icon.png',width: 70,height: 70,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network('https://upload.wikimedia.org/wikipedia/commons/c/cd/Facebook_logo_%28square%29.png',width: 70,height: 70,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network('https://upload.wikimedia.org/wikipedia/commons/9/9b/My_Files_icon.png',width: 70,height: 70,),
                )
              ],
            ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 50,
            width: 400,
            color: const Color.fromARGB(255, 232, 231, 226),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('save to photos',style: TextStyle(fontSize: 20),),
                  SizedBox(
                    width: 200,
                  ),
                  Icon(Icons.save),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 50,
            width: 400,
              color: const Color.fromARGB(255, 232, 231, 226),
              child: Row(
                children: [
                  Text('data')
                ],
              ),
          ),
        )
          ],
          
        ),   
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          showbottomsheet1(context);
        },
        child: Image.network('https://images.ctfassets.net/hrltx12pl8hq/28ECAQiPJZ78hxatLTa7Ts/2f695d869736ae3b0de3e56ceaca3958/free-nature-images.jpg?fit=fill&w=1200&h=630')),
    );
  }
}
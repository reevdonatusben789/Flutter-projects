import 'package:flutter/material.dart';

class Newanimation extends StatefulWidget {
  const Newanimation({super.key});

  @override
  State<Newanimation> createState() => _NewanimationState();
}

class _NewanimationState extends State<Newanimation>with TickerProviderStateMixin{
  AnimationController? anime ;
  Animation<double>? animefont;
  Animation<double>? animefontdecrese;
  void Increase(){
    anime!.forward();
  }
  void Decreace(){
    anime!.reverse();
  }
  @override
  void initState() {
    anime = AnimationController(vsync: this, duration: Duration(seconds: 1));
    animefont = Tween<double>(begin: 30,end: 50).animate(anime!)
    ..addListener((){
      setState(() {});
    }
    );

     animefontdecrese = Tween<double>(begin: 50,end: 30).animate(anime!)
    ..addListener((){
      setState(() {});
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor:const Color.fromARGB(255, 152, 255, 112),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.abc_outlined),
          Text('Sample Text',style: TextStyle(fontSize: animefont?.value,color: Colors.amberAccent),),
          ElevatedButton(onPressed: ()=>Increase(), child: Text('Click')),
          ElevatedButton(onPressed: ()=>Decreace(), child: Text('Click'))
        ],
      ),
    );
  }
}
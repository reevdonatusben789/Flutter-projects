import 'package:flutter/material.dart';

class Sliverappbar extends StatefulWidget {
  const Sliverappbar({super.key});

  @override
  State<Sliverappbar> createState() => _SliverappbarState();
}

class _SliverappbarState extends State<Sliverappbar> {
  List<String>wall=['assets/images/backiee-194612-landscape.jpg','assets/images/bmw 6.png','assets/images/29.png','assets/images/jag 8.png','assets/images/bmw 6.png'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            shadowColor: Colors.blueAccent,
            elevation: 2 ,
            floating: true,
            pinned: false,
            title: Text('Sliverappbar',style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: const Color.fromARGB(255, 1, 164, 112)
            ),),
            bottom: AppBar(
              title:Container(
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search_sharp),
                    hintText: 'search',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    )
                  ),
                ),
              ) ,
            ),
          ),
         SliverGrid(delegate: SliverChildBuilderDelegate(childCount:wall.length,
          (context,index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Image.asset(wall[index],fit: BoxFit.cover,),
              color: const Color.fromARGB(255, 1, 164, 112),
              
            ),
          );
         }), gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2)), 
        ],
      ),
    );
  }
}
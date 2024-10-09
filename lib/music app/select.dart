import 'package:flutter/material.dart';

class Selectmusic extends StatefulWidget {
  const Selectmusic({super.key});

  @override
  State<Selectmusic> createState() => _SelectmusicState();
}

class _SelectmusicState extends State<Selectmusic> {
  List <String> music = ['Classical','90s Rocks','Pop songs','Rap hits','Road Trip Collections','Bollywood Hits','Indie Musics','Party Musics'];
  List <String> images = ['https://static.qobuz.com/images/covers/06/29/0841811132906_600.jpg','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVycSqVv_UkHtNQBfyfdBju3aCmLAAhUD2NVS0GasjYLJtKbWjqnpZqyzQn1KFizjUxSk','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRns9uRmd8xbO-2HB28Lg96yyRlC1I8zSx0f2UGgo3QDN7X3LKE4hUE8_z5PB53RSXY6bg','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRG9Q3MJ314TwoXmUcNdoA_DOr5iSdpZ2s-y87s20Y1fVgpYCVW_3s_Zat0Y2QM4n7n-_U','https://i1.sndcdn.com/artworks-001087708042-00xq5c-t500x500.jpg','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDFXotHDNXMGpzQqqFOgVhVt8O7t6pZM9f1A&s','https://marketplace.canva.com/EAE7N4EJduM/1/0/1600w/canva-green-yellow-retro-vintage-nature-indie-music-album-cover-cZ3ZjpFfU4M.jpg','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrQFbGy8zJidUigEz2LIsvapHH7feJA7Eahw&s'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.arrow_back_ios,color: Colors.white,),
              ),
              SizedBox(
                width: 265,
              ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Icon(Icons.search,size: 40,color: Colors.white,),
           )
            ],
          ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text("Flavours Of Music",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white)),
              ),
            ],
          ),
        ),
      Expanded(
        child: GridView.builder(
          itemCount: music.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder:(BuildContext, int index){
          return Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Stack(
                  children: [
                    // Text('data',style: TextStyle(color: Colors.white),),
                    Container(
                      width: double.infinity,
                    
                      decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                 color: Colors.yellow,
                      ),
                      child: Image.network(images[index],
                      height:130,fit: BoxFit.fill,)),
              ]),
                SizedBox(
                  height: 10,

                ),
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 19),
                      child: Text(music[index],style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),),
                    ),
                  ],
                )
              ],
            ),
          );
        }),
      )
        ],
      ),
    );
  }
}
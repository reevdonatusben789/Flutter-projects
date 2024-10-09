import 'package:flutter/material.dart';

class Artist extends StatefulWidget {
  const Artist({super.key});

  @override
  State<Artist> createState() => _ArtistState();
}

class _ArtistState extends State<Artist> {
  List<String>Artist=['Mettalica','Guns n Roses','Pink Floyd','Beatles','AC/DC','Neil Diamond','Nirvana','Eagles','Queen','Led Zeppelin','Motorhead','KISS','Van Helen','Bon Jovi','Steel Heart'];
  List<String>pics=['https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYKtsLeSFjipjsSNtNsqONmBhbJHvpFeBb4g&s','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLLTb15NgamVL4TEOe8r7vOr99aIRTCL2Mkw&s','https://images.theconversation.com/files/512871/original/file-20230301-26-ryosag.jpg?ixlib=rb-4.1.0&rect=97%2C79%2C5799%2C5817&q=45&auto=format&w=926&fit=clip','https://upload.wikimedia.org/wikipedia/en/4/42/Beatles_-_Abbey_Road.jpg','https://townsquare.media/site/366/files/2019/01/ACDC.jpg?w=720&q=75','https://ecx.images-amazon.com/images/I/51O3uL1ccyL._SL500_.jpg','https://images.prismic.io/milanote/df7eeb83a07162b45ac2e882cac055de9411054a_cover.jpg?auto=compress,format','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQb7ywOxTMt4jLuLaBfSleE0JdUoBCIoHDOkg&s','https://www.rockarchive.com/media/1603/queen-qn002mr.jpg?crop=0,0.13370998116760829,0,0.018832391713747645&cropmode=percentage&width=800&height=800&rnd=131210135140000000&overlay=watermark.png&overlay.size=230,20&overlay.position=0,780','https://cdns-images.dzcdn.net/images/cover/9e663c64680899afd85f72af607d549e/0x1900-000000-80-0-0.jpg','https://c8.alamy.com/comp/2ABYWW7/motrhead-ace-of-spades-vintage-vinyl-album-cover-2ABYWW7.jpg','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqthE8clgw4Ef766kwV2Qc_L-XLHkN095C1g&s','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6sI4-AAol5O5t3ib1nP9GpXg4LplwDuLHJw&s','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKPtBPEIwXBZB-MgTz7izGTcbxBFM0o0a2tw&s','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgRYdtPT2R9p2mvVvmQ2fm9gOatnBTF_PLng&s'];
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
                width: 280,
              ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text("SKIP",style: TextStyle(color: Colors.white,fontSize: 20),),
             ) ,
            ],
          ),
       Padding(
         padding: const EdgeInsets.only(left: 20),
         child: Text('Choose 3 or more artist you love',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
       ),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey,
            ),
            height: 40,
            width: double.infinity,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
              ),
            )
            
           ),
         ),
       ),
       Expanded(
         child: GridView.builder(
          itemCount: Artist.length,
          gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:3), 
          itemBuilder: (BuildContext context,int index){
            return Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage:NetworkImage(pics[index]),
                
                ),
                SizedBox(
                  height: 10,
                ),
                Text(Artist[index],style: TextStyle(fontSize:15 ,color: Colors.white),)
              ],
            );
          }
              
               ),
       
       ),
      SizedBox(
        height: 70,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor:Colors.grey,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
            onPressed: (){}, child: Text('Submit',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
        ),
      )
  ])
    );
  }
}
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carosel1 extends StatefulWidget {
  const Carosel1({super.key});

  @override
  State<Carosel1> createState() => _Carosel1State();
}

class _Carosel1State extends State<Carosel1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: CarouselSlider(items: [
            Container(
              width: double.infinity,
              child: Image.network(fit: BoxFit.cover,'https://upload.wikimedia.org/wikipedia/commons/6/63/Toyota_Corolla_GT_AE86_Trueno_hatchback.jpg')),
            Container(
              width: double.infinity,
              child: Image.network(fit: BoxFit.cover,'https://th.bing.com/th/id/R.8a882cc9e9da0268c494de2bbbaf3c40?rik=m%2boQNQAWbJ5b2g&riu=http%3a%2f%2fwallpapersqq.net%2fwp-content%2fuploads%2f2018%2f07%2fred-BMW-M3-E92.jpg&ehk=EBSmbPKLVUjbgaVc%2bwMOzqDhU1GePhbAjZilnfCBV4M%3d&risl=&pid=ImgRaw&r=0')),
              Container(
          width: double.infinity,
                child: Image.network(fit: BoxFit.cover,'https://th.bing.com/th/id/R.c99e4e2d2c0eea53bac955df82874914?rik=BAb%2fXXBJc%2bbrYQ&riu=http%3a%2f%2fupload.wikimedia.org%2fwikipedia%2fcommons%2f4%2f4e%2fFerrari_F40_Parked.JPG&ehk=CLb1KHZiDlMNpAyTsgjZqlP1lL%2fSAyAYuhTsKjXx00o%3d&risl=&pid=ImgRaw&r=0')),
              Container(
          width: double.infinity,
                child: Image.network(fit: BoxFit.cover,'https://th.bing.com/th/id/R.74dda6ab400865aa4148f3f8d7490e8b?rik=50U5HS9kfW%2b88A&riu=http%3a%2f%2fupload.wikimedia.org%2fwikipedia%2fcommons%2f8%2f82%2fLexus_LFA_001.JPG&ehk=%2fHaE%2fIEoc9pdBp5eNW%2bxeGh9mbWiNvUl9YO2T2f12eI%3d&risl=&pid=ImgRaw&r=0'))
          ], options: CarouselOptions(
            height: 300,
          aspectRatio: 3/4,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          scrollDirection: Axis.vertical,
          )),
        ),
      ),
    );
  }
}
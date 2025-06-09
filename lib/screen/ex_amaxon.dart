import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project/screen/constant.dart';

class Amazon extends StatefulWidget {
  const Amazon({super.key});

  @override
  State<Amazon> createState() => _AmazonState();
}

class _AmazonState extends State<Amazon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: asss,
        title: TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            hintText: "Search or ask something",
            suffixIcon: SizedBox(width: 85,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.mic),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.camera_alt_outlined),
                  )
                ],
              ),
            ),
            border: OutlineInputBorder()
          ), 
        ),
        actions: [
          Center(child: Icon(Icons.qr_code_scanner))
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 45,
            width: 420,
            decoration: BoxDecoration(
              color: asss
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.location_pin),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Delivering to mumbai-400001 Update location"),
                ),
              ],
            ),
          ),
          CarouselSlider.builder(
              options:CarouselOptions(
            height: 250,
            aspectRatio: 16/9,
            viewportFraction: 1,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            scrollDirection: Axis.horizontal,
          ),
            itemCount: lis.length,
            itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
                Container(
                  height: 100,
                  width: 450,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(lis[itemIndex].image),fit: BoxFit.fill),shape: BoxShape.rectangle
                  ),
                ),),
          ListView()
        ],
      ),
    );
  }
}

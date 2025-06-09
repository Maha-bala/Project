import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class Packs extends StatefulWidget {
  const Packs({super.key});

  @override
  State<Packs> createState() => _PacksState();
}

class _PacksState extends State<Packs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.search,color: Colors.black,size: 25,),
                suffixIcon:SizedBox(
                  width: 80,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.mic,color: Colors.black,size: 20,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.camera_alt_outlined,color: Colors.black,size: 20,),
                      ),
                    ],
                  ),
                ),
                border: OutlineInputBorder()

            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.qr_code_scanner,color: Colors.black,size: 25,),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 35,
              width: 450,
              color: Colors.blue,
              child: Row(
                children: [
                  Icon(Icons.location_pin),
                  Text("Delivering to Mumbai 400001-update location")
                ],
              ),
            ),
            CarouselSlider.builder(
                options: CarouselOptions(
                  height: 200,
                  aspectRatio: 16/9,
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
                  //onPageChanged: callbackFunction,
                  scrollDirection: Axis.horizontal,
                ),
                itemCount: 0,
                itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
                  return Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('dress.jpg'))
                    ),
                    child: Text(itemIndex.toString()),
                  );
                }

            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int pageViewIndex) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 150,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('ph.jpg'))
                        ),


                      ),
                    );
                  }
              ),
            ),
            SizedBox(
              height: 400,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // number of items in each row
                    mainAxisSpacing: 20, // spacing between rows
                    crossAxisSpacing: 5, // spacing between columns
                  ),
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int pageViewIndex) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height:150,
                            width: 150,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(35),
                              image: DecorationImage(image: AssetImage('jack.jpg'),
                              fit: BoxFit.fill
                              ),
                            ),
                          ),
                          Text("Minimum 70% off|Mens t-shirt")
                        ],
                      )
                    );
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
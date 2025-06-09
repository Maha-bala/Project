import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'constant.dart';

class Promi extends StatefulWidget {
  const Promi({super.key});

  @override
  State<Promi> createState() => _PromiState();
}

class _PromiState extends State<Promi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:asss,
        title: TextFormField(

          decoration: InputDecoration(
            border: OutlineInputBorder(),
            fillColor: Colors.white,
            filled: true,
            prefixIcon: Icon(Icons.search),
            suffixIcon: SizedBox(width: 90,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.camera),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.mic),
                  ),
                ],
              ),
            ),
          ),
        ),
        actions: [
          Icon(Icons.document_scanner)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 45,
              width: 450,
              decoration: BoxDecoration(
                color: blue,
              ),
              child:Row(
                children: [
                  Icon(Icons.location_pin),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Delivering to mumbai-400001 Update location"),
                  )
                ],
              )
            ),
            SizedBox(height: 300,
              child: CarouselSlider.builder(
                options: CarouselOptions(
                height: 200,
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
                  //onPageChanged: callbackFunction,
                scrollDirection: Axis.horizontal,
              ),
              itemCount: lis.length,
              itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex)
              {
                return Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    image: DecorationImage(image: AssetImage("dress.jpg"),
                      fit: BoxFit.fill
                    ),
                    shape: BoxShape.rectangle
                  ),
                );
              },),
            ),
            SizedBox(height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int pageViewIndex)
                  {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 150,
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(),
                              image: DecorationImage(image: AssetImage('ph.jpg'),
                                  fit: BoxFit.fill
                              ),
                              shape: BoxShape.rectangle
                          ),
                        ),
                      ),

                    );
                  }
              ),
            ),
            SizedBox(height: 200,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 1,
                  ),
                itemCount: 6,
                itemBuilder: (BuildContext context, int pageViewIndex)
                {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                    Column(
                      children: [

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:
                          Container(
                            height: 150,
                            width: 200,
                            color: Colors.red,
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(35),
                                image: DecorationImage(image: AssetImage("jack.jpg"),
                                fit: BoxFit.fill
                                ),
                                shape: BoxShape.rectangle
                              ),
                            ),
                          ),
                        ),
                        Text("Minimum 70% off on t-shirt")
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),


    );
  }
}

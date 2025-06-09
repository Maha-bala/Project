import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:project/drawer.dart';
import 'package:project/screen/product.dart';
import 'package:project/screen/spotify.dart';

import '../GST.dart';
import '../color/color.dart';
import 'constant.dart';



class Packss extends StatefulWidget {
  const Packss({super.key});

  @override
  State<Packss> createState() => _PackssState();
}

class _PackssState extends State<Packss> {
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: blk,
      appBar: AppBar(
        // leading: Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: Icon(Icons.menu,color: Colors.white,),
        //
        // ),

          title: TextFormField(
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              //  labelStyle: te,
                prefixIconColor: Colors.black,
                prefixIcon: Icon(Icons.search),
                hintText: "Search...",
                // hintStyle: as,
                suffixIcon:SizedBox(
                  width: 80,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.mic,color: Colors.black,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.photo_camera_outlined,color: Colors.black,),
                      ),
                    ],
                  ),
                ),

                border: OutlineInputBorder(

                )

            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.qr_code_scanner,color: Colors.black,),
            ),        ],
          backgroundColor: Color(0xfff8cdbdf)
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                    color: Colors.lightBlueAccent
                ),
                child: Text("Drawer")),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (builder)=> const Packss()));
              },
            ),
            ListTile(
              leading: Icon(Icons.production_quantity_limits_sharp),
              title: Text("Product"),
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (builder)=> const Product()));
              },
            ),
            ListTile(
              leading: Icon(Icons.add_shopping_cart),
              title: Text("Cart"),
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (builder)=>const GST()));
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart_outlined),
              title: Text("Add product"),
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const Spotify()));
              },
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              width: 450,
              color:blue,
              child: Row(
                children: [
                  Icon(Icons.location_pin),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Delivering to mumbai 400001-update location"),
                  )
                ],
              ),
            ),
            CarouselSlider.builder(
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
                  onPageChanged: (index,reason)
                  {
                    setState(() {
                      currentIndex=index;
                    });

                  },
                  scrollDirection: Axis.horizontal,
                ),
                itemCount: lis.length,
                itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
                  return Container(
                    height: 300,
                    width: 450,
                    decoration: BoxDecoration(
                        color: Colors.cyan,
                        image: DecorationImage(
                          image: AssetImage(lis[itemIndex].image),
                          fit: BoxFit.fill,
                        )
                    ),
                    // child: Text(itemIndex.toString()),
                  );
                }
                ),

          Center(
            child: Row(
              children: [
                SizedBox(width:350,
                  child: DotsIndicator(dotsCount: liss.length,position: currentIndex.toDouble(),
                    decorator: DotsDecorator(
                        size: Size.square(9.0),
                        activeSize: Size(18.0, 9.0),
                        activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)
                        )
                    ),
                  ),
                ),Icon(Icons.abc_outlined),
                Icon(Icons.abc_outlined)
              ],
            ),
          ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                // color: Colors.cyan,
                height: 180,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: 100,
                          width: 150,
                          decoration: BoxDecoration(
                            border: Border.all(),
                              image: DecorationImage(
                                  image: AssetImage(liss[index].image),
                                  fit: BoxFit.fill
                              ),
                            shape: BoxShape.rectangle

                          ),
                          child: Text(lis2[index].text),
                        ),
                      );
                    }
                ),
              ),
            ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Top categories for you",style: as,),
        ),

        SizedBox(height: 200,
          child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: liss.length,
                  itemBuilder: (BuildContext context, int index)
                  {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                height: 65,
                                width: 65,
                                decoration: BoxDecoration(
                                  border: Border.all(),
                                  image: DecorationImage(image: AssetImage(liss[index].image),
                                  fit: BoxFit.fill
                                  ),
                                  shape: BoxShape.rectangle
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(liss[index].text,style: TextStyle(fontSize: 12),),
                        Row(
                          children: [
                            Container(
                              height: 65,
                              width: 65,
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  image: DecorationImage(image: AssetImage(lis1[index].image),
                                      fit: BoxFit.fill
                                  ),
                                  shape: BoxShape.rectangle
                              ),
                            ),
                          ],
                        ),
                        Text(liss[index].text,style: TextStyle(fontSize: 12),)

                      ],
                    );
                  },),
        ),
          Text("Recommended deals for you",style: as,),

          SizedBox(
              height: 700,
              child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // number of items in each row
                    mainAxisSpacing: 1, // spacing between rows
                    crossAxisSpacing: 1, // spacing between columns
                  ),


                  itemCount: liss.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 80,
                        width: 150,
                        color: Colors.red,
                        child: Container(
                          decoration: BoxDecoration(
                            //    image: DecorationImage(image: AssetImage("mic.jpg"))),
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 150,
                                width: 200,
                                decoration: BoxDecoration(
                                  border: Border.all(),
                                    image: DecorationImage(image: AssetImage(liss[index].image),
                                        fit: BoxFit.fill),
                                shape: BoxShape.rectangle),
                              ),
                              Text(liss[index].text),
                              SizedBox(
                                  height: 20,
                                  width:100,
                                  child: Text("-5% RS-/200"))
                            ],
                          ),
                        ),
                        // decoration: BoxDecoration(
                        //     image: DecorationImage(image: AssetImage("atk.jpg"))
                        //
                        //
                        // ),
                      ),
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
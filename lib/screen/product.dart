import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:project/screen/aa.dart';
import 'package:project/screen/constant.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  bool light=false;

String drop="1";
var dropdown=[
  "1","2","3","4","5"
];

int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: ()
        {
          Navigator.push(context, MaterialPageRoute(builder: (contect)=>Packss()));
        },
            icon: Icon(Icons.arrow_back)),
        backgroundColor: asss,
        title: TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            prefixIcon: Icon(Icons.search),
            fillColor: Colors.white,
            filled: true,
            suffixIcon: SizedBox(width: 80,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.camera_alt_outlined),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.mic),
                  )
                ],
              ),
            )
          ),
        ),
        actions: [
          Icon(Icons.qr_code_scanner)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("boAt Airpodes 121 pro Plus, 100HRS Battery,4Mics Enx,50ms Low Latency,Fast Charge,LEDnDispaly IPX5,v5.3 Bluetooth in Ear Earbuds,TWS Ear Buds"),
            ),
        
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                   Stack(
                     children:[ CarouselSlider.builder(options: CarouselOptions(
                      height: 200,
                      aspectRatio: 16/9,
                      viewportFraction: 1,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: false,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.9,
                      onPageChanged: (index,reason)
                      {
                        setState(() {
                          currentIndex=index;
                        });
                      },
                      scrollDirection: Axis.horizontal,
                                       ),
                      itemCount: liss3.length,
                      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
                      return Container(
                        height: 300,
                        width: 450,
                        decoration: BoxDecoration(
                            color: Colors.cyan,
                            image: DecorationImage(
                              image: AssetImage(liss3[itemIndex].image),
                              fit: BoxFit.fill,
                            )
                        ),
                      );}
                        ),
                       Container(
                         height: 55,
                         width: 55,
                         decoration: BoxDecoration(
                           color: Colors.red,
                           border: Border.all(),
                           shape: BoxShape.circle
                         ),
                       ),
                       Positioned(
                         left: 5,
                           top: 20,
                           child:Text("83%0ff",style: TextStyle(fontWeight: FontWeight.bold),))
        
                   ],),
                  DotsIndicator(dotsCount: liss3.length,position: currentIndex.toDouble(),
                  decorator: DotsDecorator(
                    size: Size.square(7.0),
                    activeSize: Size(18.0, 9.0),
                    activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)
                    )
                  ),),
                  Row(
                    children: [
                      Icon(Icons.directions_boat_filled_sharp),
                      Column(
                        children: [
                          Text("boat"),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Visit the store",style: TextStyle(decoration: TextDecoration.underline,color: Colors.blue),),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 90,
                      ),Text("3.5"),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                        RatingBar.builder(initialRating: 3.5,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,),
                          itemSize: 15,
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                      ),Text("(23,159)")
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.red
                    ),
                    child: Center(child: Text("limited deal",style: TextStyle(fontSize: 20),)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(width: 400,
                child: RichText(text: TextSpan(
                  text: "-83%",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 40,
                  ),
                  children: [
                    TextSpan(
                    text: "\u{20b9}349",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 50,
                        fontWeight: FontWeight.bold
                    ),)
                  ]
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  RichText(text: TextSpan(children: [
                    TextSpan(text: "M.R.P.:",style: TextStyle()),
                    TextSpan(text: "\u{20b9}4,999",style: TextStyle(decoration: TextDecoration.lineThrough))
                  ])),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.home),
                  Text("Fulfilled")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(text: TextSpan(children: [
                TextSpan(text: "Earn welcome offers up to ",style: TextStyle(fontSize: 20,color: Colors.blueAccent)),
                TextSpan(text: "\u{20b9}50",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blueAccent)),
                TextSpan(text: "with",style: TextStyle(fontSize: 20,color: Colors.blueAccent)),
                TextSpan(text: "Amazon Pay UPI",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blueAccent))
              ])),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                    leading: Icon(Icons.local_offer),
                    title: Text("See all offers & discounts"),
                    trailing: Icon(Icons.arrow_drop_down),
                  ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(Icons.shield_moon),
                title: Text("Amazon protect"),
                trailing: Icon(Icons.arrow_drop_down_circle_rounded),

              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("Total:\u{20b9}999",style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(text:
              TextSpan(children: [
                TextSpan(text: "Free delivery",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.blueAccent,
                        fontSize: 20
                    )),
                TextSpan(text: "  Friday, June 6 to",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                TextSpan(text: "  Delivery mumbai-400001. Details",style: TextStyle(decoration: TextDecoration.underline,fontSize: 20,color: Colors.blueAccent)),
                TextSpan(text: "  Or fastest delivery",style: TextStyle(fontSize: 20)),
                TextSpan(text: "  Thursday, June 5",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                TextSpan(text: "  order within",style: TextStyle(fontSize: 20)),
                TextSpan(text: "  12hrs 30mins",style: TextStyle(fontSize: 20,color: Colors.green))
              ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.location_pin),
                  Text("Delivering to Maha")
                ],
              ),
            ),
             Row(
               children: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                     height: 45,
                     width: 390,
                     decoration: BoxDecoration(
                       border: Border.all(),
                       borderRadius:BorderRadius.circular(35)
                     ),
                     child: Center(
                       child: DropdownButton(
                          value:drop,
                          items: dropdown.map((dropdown)
                          {
                            return DropdownMenuItem(value: dropdown, child: Text(dropdown));
                                         }).toList(),
                          onChanged: (String? newvalue)
                          {
                            drop=newvalue!;
                          }),
                     ),),
                 )
               ],
             ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 45,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.orange,

                  borderRadius: BorderRadius.circular(35)
                ),
                child: Center(child: Text("Add to card",style: TextStyle(fontSize: 25),)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 45,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.yellow,

                    borderRadius: BorderRadius.circular(35)
                ),
                child: Center(child: Text("Buy Now",style: TextStyle(fontSize: 25),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}

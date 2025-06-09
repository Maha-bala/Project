import 'package:flutter/material.dart';
import 'package:project/screen/constant.dart';


class qwertyy extends StatefulWidget {
  const qwertyy({super.key});

  @override
  State<qwertyy> createState() => _qwertyyState();
}

class _qwertyyState extends State<qwertyy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
          length: 3,
          child: NestedScrollView(
              headerSliverBuilder: (BuildContext,bool)
              {
                return [
                  SliverAppBar(
                    snap: false,
                    pinned: true,
                    floating: false,
                    title: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.arrow_back,color: Colors.white,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("virat.kohli",style: TextStyle(color: Colors.white),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.verified,color: Colors.blue,),
                            )
                          ],
                        ),
                      ],
                    ),
                    backgroundColor: Colors.black,
                    flexibleSpace:  FlexibleSpaceBar(
                      background: Column(
                        children: [
                          SizedBox(height: 65,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Container(
                                  height: 90,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      border: Border.all(),
                                      image: DecorationImage(image: AssetImage("assets/panda.jpg"),
                                          fit: BoxFit.fill
                                      ),
                                      shape: BoxShape.circle
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      SizedBox(width: 250,
                                        child: Row(
                                          children: [
                                            Text("Virat Kohli",style: TextStyle(color: Colors.white,fontSize: 15),),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 250,
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text("1,032",style: TextStyle(color: Colors.white,fontSize: 20),),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text("273M",style: TextStyle(color: Colors.white,fontSize: 20),),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text("279",style: TextStyle(color: Colors.white,fontSize: 20),),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 250,
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text("Post",style: TextStyle(color: Colors.white,fontSize: 15),),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text("followers",style: TextStyle(color: Colors.white,fontSize: 15),),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text("following",style: TextStyle(color: Colors.white,fontSize: 15),),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),


                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(height: 35,
                              child: Row(
                                children: [
                                  Text("Carpedium",style: TextStyle(color: Colors.white),),
                                ],
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                    expandedHeight: 300,
                    bottom: TabBar(tabs: [
                      Tab(icon: Icon(Icons.grid_view_sharp,color: Colors.white,),),
                      Tab(icon: Icon(Icons.person,color: Colors.white,),),
                      Tab(icon: Icon(Icons.video_camera_front_outlined,color: Colors.white,),)
                    ]),
                  )
                ];
              },
              body:  TabBarView(
                  children: [
                    GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3, // number of items in each row
                          mainAxisSpacing: 1, // spacing between rows
                          crossAxisSpacing: 1, // spacing between columns
                        ),


                        itemCount: lis4.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              image: DecorationImage(image: AssetImage(lis4[index].image),
                              fit: BoxFit.fill),
                              shape: BoxShape.rectangle
                            ),
                          );
                        }
                    ),
                    Container(color: Colors.yellow,),
                    Container(color: Colors.red,)
                  ])

          )
      ),
    );
  }
}
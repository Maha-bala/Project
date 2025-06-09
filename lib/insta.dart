import 'package:flutter/material.dart';
import 'package:project/screen/constant.dart';

class Insta extends StatefulWidget {
  const Insta({super.key});

  @override
  State<Insta> createState() => _InstaState();
}

class _InstaState extends State<Insta> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: DefaultTabController(length: 3,
        child: CustomScrollView(

          slivers: [

            SliverAppBar(
              bottom: TabBar(tabs: [Tab(icon: Icon(Icons.grid_view_sharp),),TabBar(tabs: [Tab(icon: Icon(Icons.video_camera_front_outlined),),TabBar(tabs: [Tab(icon: Icon(Icons.perm_contact_cal),)])])]),
              snap: false,
              pinned: false,
              floating: false,
              backgroundColor: Colors.black,
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
              flexibleSpace: FlexibleSpaceBar(
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
                              image: DecorationImage(image: AssetImage("panda.jpg"),
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
            ),
            SliverGrid(
                delegate: SliverChildBuilderDelegate((BuildContext context,int index)
                {
                  return Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      image: DecorationImage(image: AssetImage(lis4[index].image),
                      fit: BoxFit.fill)
                    ),
                  );
                  },childCount: lis4.length),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3))
          ]
        ),
      ),
    );
  }
}

class qwerty extends StatefulWidget {
  const qwerty({super.key});

  @override
  State<qwerty> createState() => _qwertyState();
}

class _qwertyState extends State<qwerty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
          length: 2,
          child: NestedScrollView(
              headerSliverBuilder: (BuildContext,bool)
              {
                return [
                  SliverAppBar(
                    backgroundColor: Colors.cyanAccent,
                    expandedHeight: 400,
                    bottom: TabBar(tabs: [
                      Tab(icon: Icon(Icons.abc),),
                      Tab(icon: Icon(Icons.abc),),
                    ]),
                  )
                ];
              },
              body:  TabBarView(
                  children: [
                    Container(color: Colors.red,),
                    Container(color: Colors.yellow,)
                  ])

          )
      ),
    );
  }
}


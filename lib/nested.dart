import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:project/screen/constant.dart';
import 'package:project/tit.dart';

class Nested extends StatefulWidget {
  const Nested({super.key});

  @override
  State<Nested> createState() => _NestedState();
}

class _NestedState extends State<Nested> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder:
        (BuildContext context, bool innerBoxIsScrolled)
    {
      return [SliverAppBar(
        snap: false,
        pinned: true,
        floating: false,
        backgroundColor: Color(0xfff4b5459),
        title: Icon(Icons.arrow_back,color: Colors.white,),
        flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
          title: Text("2010s Mix",style: TextStyle(color: Colors.white),),
          background: Column(
            children: [
              SizedBox(height:35,),
              Row(
                children: [
                  SizedBox(
                    width: 250,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search,color: Colors.white,),
                            hintText: "Find in playlisyt",
                            hintStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder()
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 90,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Sort",
                            hintStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder()
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Image(image: AssetImage('assets/ani.jpg')),
            ],
          ),),
        expandedHeight: 300.5,

      )];
    },
           body: ListView.builder(
             scrollDirection: Axis.vertical,
             itemCount: lis4.length,
             itemBuilder: (BuildContext context, int index)
             {
               return Container(
                 decoration: BoxDecoration(
                     gradient: LinearGradient(colors: [Color(0xfff121212),Color(0xfff4b5459)],begin: Alignment.topLeft,end: Alignment.bottomRight)
                 ),
                 child: ListTile(
                   leading: Container(
                     height: 250,
                     width: 65,
                     decoration: BoxDecoration(
                         shape: BoxShape.rectangle
                     ),
                     child: Image(image: AssetImage(lis4[index].image),
                       fit: BoxFit.fill,),
                   ),
                   title: Text(lis4[index].text,style: TextStyle(color: Colors.white),),
                   trailing: Icon(Icons.more_vert,color: Colors.white,),
                 ),
               );
             },),
      )
    );
  }
}

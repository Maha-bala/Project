import 'package:flutter/material.dart';
import 'package:project/decor.dart';
import 'package:project/nested.dart';
import 'package:project/screen/aa.dart';
import 'package:project/screen/cauro.dart';
import 'package:project/screen/product.dart';
import 'package:project/screen/spotify.dart';
import 'package:project/screen/title.dart';
import 'package:project/tab.dart';
import 'package:project/tit.dart';

class Bot extends StatefulWidget {
  const Bot({super.key});

  @override
  State<Bot> createState() => _BotState();
}

class _BotState extends State<Bot> {
  int index=0;

  final screen=[
    Packss(),
    Product(),
    Nested(),
    qwertyy(),
    Tit()
  ];

  void tap(ind)
  {
    setState(() {
      index=ind;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[index],
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.production_quantity_limits,color: Colors.black,),label: 'Products'),
            BottomNavigationBarItem(icon: Icon(Icons.music_note,color: Colors.black,),label: 'Spotify'),
            BottomNavigationBarItem(icon: Icon(Icons.camera_outlined,color: Colors.black,),label: "Instagram"),
            BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.black,),label: "Profile")
          ],
        currentIndex: index,
        onTap: tap,
      ),

      );
  }
}

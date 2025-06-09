import 'package:flutter/material.dart';

import '../decor.dart';


class Botnavi extends StatefulWidget {
  const Botnavi({super.key});

  @override
  State<Botnavi> createState() => _BotnaviState();
}

class _BotnaviState extends State<Botnavi> {
  
  
  int _index = 0;
  
  final screen  = [
    Text("ok"),
    Decor(),
  ];
  
  void tap(index)
  {
    setState(() {
      _index = index;
    });
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[_index],
        bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
              BottomNavigationBarItem(icon: Icon(Icons.settings),label: "profile"),

            ],
          currentIndex: _index,
          onTap: tap,
        ),
    );
  }
}

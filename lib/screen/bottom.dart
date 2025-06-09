import 'package:flutter/material.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int a=0;

  final screen=[
    Text('OK'),
    Text("OK OK")
  ];
  void tap(index)
  {
    setState(() {
      a=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[a],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
    BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'profile')
    ],
        currentIndex: a,
        onTap: tap,
      ),
    );
  }
}

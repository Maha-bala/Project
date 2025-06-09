import 'package:flutter/material.dart';

class ExBot extends StatefulWidget {
  const ExBot({super.key});

  @override
  State<ExBot> createState() => _ExBotState();
}

class _ExBotState extends State<ExBot> {
  
  int index=0;
  
  final screen=[
    Text("data"),
    Text("hello"),
    Text("ok")
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
      bottomNavigationBar: BottomNavigationBar(items: [BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
      
      ],currentIndex: index,
        onTap: tap,
      ),
      
    );
  }
}

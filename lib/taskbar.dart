import 'package:flutter/material.dart';

class Tasks extends StatefulWidget {
  const Tasks({super.key});

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  Color Containerclr=Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.white,
              ),
              ElevatedButton(onPressed: ()
              {
                setState(() {
                  Containerclr=Colors.red;
                });
              }, child: Text("Red")),
              ElevatedButton(onPressed: ()
              {
                setState(() {
                  Containerclr=Colors.black;
                });
              }, child: Text("Black")),
              ElevatedButton(onPressed: ()
              {
                setState(() {
                  Containerclr=Colors.green;
                });
              }, child: Text("green"))
            ],
          )
        ],
      ),
    );
  }
}

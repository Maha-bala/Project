import 'package:flutter/material.dart';

class qwe extends StatefulWidget {

  String a;

   qwe({super.key, required this.a});

  @override
  State<qwe> createState() => _qweState();
}

class _qweState extends State<qwe> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Text(widget.a,style: TextStyle(fontSize: 30),),

            ],
          ),
          IconButton(onPressed: (){}, icon: Icon(Icons.add)),
          IconButton(onPressed: (){}, icon: Icon(Icons.delete))
        ],
      ),
    );
  }
}

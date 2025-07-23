import 'dart:math';

import 'package:flutter/material.dart';

class listMin extends StatefulWidget {
  const listMin({super.key});

  @override
  State<listMin> createState() => _listMinState();
}

class _listMinState extends State<listMin> {
  List item=[];


  void additems()
  {

    setState(() {
      item.add(ctr.text);

    });
    
  }

  TextEditingController ctr=TextEditingController();
  TextEditingController ctr1=TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("MIN & MAX")),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(

              controller: ctr,
              decoration: InputDecoration(
                border: OutlineInputBorder(),

              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: ()
                {
                  additems();
                }, child: Text("Ok")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: ()
                {
                  item.sort();
                  var a=item.first;
                  var e=item.take(5);
                  showDialog(context: (context), builder: (BuildContext)
                  {
                    return AlertDialog(
                      title: Text("Minimum"),
                      actions: [
                        Text("$item"),
                        Text("Min$a"),

                      ],
                    );
                  });
                  }, child: Text("Min")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: ()
                {
                  var c=item.reversed;
                  var b=item.last;
                  showDialog(context: (context), builder: (builder)
                  {
                    return AlertDialog(
                      title: Text("Maximum"),
                      actions: [
                        Text("$c"),
                        Text("Maximum$b")
                      ],
                    );
                  });
                }, child: Text("Max")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: ()
                {
                  var t=item.take(3);
                  showDialog(context: (context), builder: (BuildContext)
                  {
                    return AlertDialog(
                      title: Text("Count"),
                      actions: [
                        Text("$t")
                      ],
                    );
                  });
                }
                , child: Text("Count")),
              ),
            ],
          ),
          
          Container(
            height: 90,
            child: ListView.builder(
              itemCount: item.length,
              itemBuilder: (BuildContext,index)
              {
                return Column(
                  children: [
                    Container(
                      height: 40,
                      width: 300,
                      color: Colors.yellow,
                      child: Row(
                        children: [
                          Text(item[index]),
                        ],
                      ),
                    )
                  ],
                );
              },),
          )
        ],
      ),
      
    );
  }
}

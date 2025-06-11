import 'package:flutter/material.dart';
import 'package:project/screen/index.dart';

class Liss extends StatefulWidget {
  const Liss({super.key});

  @override
  State<Liss> createState() => _LissState();
}

class _LissState extends State<Liss> {

   List items=[];



void additem()
{
  setState(() {
    items.add(ctr.text);
  });
}

TextEditingController ctr=TextEditingController();
TextEditingController ctr2=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            controller: ctr,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          ElevatedButton(onPressed: (){
            additem();
          }, child: Text("OK")),
          Container(
            height: 300,
            child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (BuildContext ,index)
            {
              return GestureDetector(
                onTap: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>qwe(a: items[index])));
                  },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.cyanAccent,
                    ),child: Row(
                      children: [
                        Text(items[index]),
                        IconButton(
                            onPressed: ()
                        {
                          showDialog(context: (context), builder: (BuildContext)
                          {
                            return AlertDialog(
                              title: TextFormField(controller: ctr2,),
                              actions: [
                                ElevatedButton(onPressed: ()
                                {
                                  setState(() {
                                    items[index]=ctr2.text;
                                    Navigator.pop(context);
                                  });
                                }, child: Text("Update"))
                              ],

                            );
                          });

                        },
                            icon: Icon(Icons.add)),
                        IconButton(onPressed: ()
                        {
                          setState(() {
                            items.removeAt(index);
                          });
                        }, icon: Icon(Icons.delete)),

                      ],
                    ),
                  ),
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}

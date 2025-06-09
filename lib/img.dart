import 'package:flutter/material.dart';

class Img extends StatelessWidget {
  const Img({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu,size: 35,color: Colors.red,),
        title: Text("ok",style: TextStyle(color: Colors.black38,fontSize: 35,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.cyanAccent,
        actions: [
          Icon(Icons.menu)
        ],
      ),
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: "Enter Name",
                border: OutlineInputBorder(),
              ),
            ),
          ),


          Container(
            height: 200,
            width: 300,

            decoration: BoxDecoration(
              color: Colors.cyanAccent,
              border: Border.all(),
             // borderRadius: BorderRadius.circular(35),
              image: DecorationImage(
                  image: AssetImage("doll.jpg"),
                fit: BoxFit.fill
              ),
              shape: BoxShape.circle
            ),
            child: Center(child: Text("data")),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Col extends StatelessWidget {
  const Col({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('doll.jpg'),
                fit: BoxFit.fill
              ),
              shape: BoxShape.circle
            ),
          ),

        ),
        backgroundColor: Colors.grey,



      ),

      body: Column(
        children: [
          Row(
            children: [
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  width: 180,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    image: DecorationImage(
                      image: AssetImage('doll.jpg'),
                      fit: BoxFit.fill
                    ),
                    shape: BoxShape.rectangle
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  width: 180,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    image: DecorationImage(
                      image: AssetImage('doll.jpg'),
                      fit: BoxFit.fill
                    )
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 20,),
          Container(
            height: 400,
            width: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('doll.jpg'),
                fit: BoxFit.fill
              ),
              shape: BoxShape.rectangle
            ),
            child: Column(
              children: [
                SizedBox(height: 45,),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "hello  buddy",
                    border: OutlineInputBorder()
                  ),
                )
              ],
            ),
          )
          



        ],

      ),


    );
  }
}

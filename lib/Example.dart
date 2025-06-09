import 'package:flutter/material.dart';
import 'package:project/col.dart';

class Exam extends StatelessWidget {
  const Exam({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              border: Border.all(),
              image: DecorationImage(image: AssetImage('doll.jpg'),
              fit: BoxFit.fill
              ),
              shape: BoxShape.rectangle
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  border: Border.all(),
                  image: DecorationImage(image: AssetImage('doll.jpg'),
                  fit: BoxFit.fill
                  ),
                  shape: BoxShape.rectangle
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 80,
                        width: 90,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            image: DecorationImage(image: AssetImage('doll.jpg'),
                                fit: BoxFit.fill
                            ),
                            shape: BoxShape.rectangle
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 90,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          image: DecorationImage(image: AssetImage('doll.jpg'),
                          fit: BoxFit.fill
                          ),
                          shape: BoxShape.rectangle
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 80,
                        width: 90,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          image: DecorationImage(image: AssetImage('doll.jpg'),
                          fit: BoxFit.fill
                          ),
                          shape: BoxShape.rectangle
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 90,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          image: DecorationImage(image: AssetImage('doll.jpg'),
                          fit: BoxFit.fill
                          ),
                          shape: BoxShape.rectangle
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
          Container(
            height: 400,
            width: 400,
            decoration: BoxDecoration(
              border: Border.all(),
              image: DecorationImage(image: AssetImage('doll.jpg'),
              fit: BoxFit.fill
              ),
              shape: BoxShape.rectangle
            ),
            child: Row(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    image: DecorationImage(image: AssetImage('doll.jpg'),
                    fit: BoxFit.fill
                    ),
                    shape: BoxShape.rectangle
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 180,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(style: TextStyle(fontSize: 20),
                              decoration: InputDecoration(
                                icon: Icon(Icons.person,color: Colors.black38,),
                                hintText: "Hello",
                                border: OutlineInputBorder()
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(onPressed: (){}, child: Text('OKAY'))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

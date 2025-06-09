import 'package:flutter/material.dart';
import 'package:project/col.dart';

class Dart extends StatelessWidget {
  const Dart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(),
          image: DecorationImage(image: AssetImage('doll.jpg'),
          fit: BoxFit.fill
          ),
          shape: BoxShape.rectangle
        ),
          child: Column(
            children: [
              Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                    border: Border.all(),
                    image: DecorationImage(image: AssetImage('doll.jpg'),
                        fit: BoxFit.fill
                    ),
                    shape: BoxShape.circle
                ),
              ),
              Column(
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
                          Container(
                            height: 100,
                            width: 150,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              image: DecorationImage(image: AssetImage('doll.jpg'),
                              fit: BoxFit.fill
                              ),
                              shape: BoxShape.rectangle
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
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
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
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
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 500,
                          width:400,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              image: DecorationImage(image: AssetImage('doll.jpg'),
                                  fit: BoxFit.fill
                              ),
                              shape: BoxShape.rectangle
                          ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      SizedBox(width: 150,
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                              icon: Icon(Icons.person),
                                              hintText: "hello",
                                              border: OutlineInputBorder()
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: ElevatedButton(onPressed: (){}, child: Text('LOGIN')),
                                      ),

                                    ],
                                  ),
                                ),
                                Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 200,
                                            width: 200,
                                            decoration: BoxDecoration(
                                              border: Border.all(),
                                              image: DecorationImage(image: AssetImage('panda.jpg'),
                                              fit: BoxFit.fill
                                              ),
                                              shape: BoxShape.rectangle
                                            ),
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    height: 70,
                                                    width: 70,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(),
                                                      image: DecorationImage(image: AssetImage('panda.jpg'),
                                                      fit: BoxFit.fill
                                                      ),
                                                      shape: BoxShape.rectangle
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    height: 70,
                                                    width: 70,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(image: AssetImage('panda.jpg'),
                                                      fit: BoxFit.fill
                                                      ),
                                                      shape: BoxShape.rectangle
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    height: 70,
                                                    width: 70,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(image: AssetImage('panda.jpg'),
                                                      fit: BoxFit.fill
                                                      ),
                                                      shape: BoxShape.rectangle
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    height: 70,
                                                    width: 70,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(),
                                                      image: DecorationImage(image: AssetImage('panda.jpg'),
                                                      fit: BoxFit.fill
                                                      ),
                                                      shape: BoxShape.rectangle
                                                    ),
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    ),






                              ],
                            ),


                            ),


                      ],
                    ),
                  )

            ],
          ),
      ],),
      ),
    );
  }
}

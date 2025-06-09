import 'package:flutter/material.dart';
import 'package:project/col.dart';

class Tex extends StatelessWidget {
  const Tex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                border: Border.all(),
                image: DecorationImage(image: AssetImage('doll.jpg'),
                fit: BoxFit.fill
                ),
                shape: BoxShape.circle
              ),
            ),
          ),
          Row(
            children: [
              Container(
                height: 200,
                width: 150,
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 80,
                          width: 80,
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
                          width: 80,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              image: DecorationImage(image: AssetImage('doll.jpg'),
                                  fit: BoxFit.fill
                              ),
                              shape: BoxShape.rectangle
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 80,
                          width: 80,
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
                          width: 80,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              image: DecorationImage(image: AssetImage('doll.jpg'),
                                  fit: BoxFit.fill
                              ),
                              shape: BoxShape.rectangle
                          ),
                        ),
                      ),
                    ],
                  ),

                ],
              ),

                ],
              ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 230,
              width: 400,
              decoration: BoxDecoration(
                border: Border.all(),
                color: Colors.cyanAccent
              ),
              child: Row(
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
                      SizedBox(
                          width:140,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                icon: Icon(Icons.person),
                                hintText: 'Enter the name',
                                border: OutlineInputBorder()
                              ),
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(onPressed: (){}, child: Text("ok")),
                      )
                    ],
                  )
                ],
              ),
            ),
          )

        ],
      ),

    );
  }
}

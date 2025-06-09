import 'package:flutter/material.dart';

class Log extends StatelessWidget {
  const Log({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('panda.jpg'),
          fit: BoxFit.fill
          ),
          shape: BoxShape.rectangle
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                width: 100,
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
                      height: 90,
                      width: 150,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        image: DecorationImage(image: AssetImage('panda.jpg'),
                        fit: BoxFit.fill
                        ),
                        shape: BoxShape.rectangle
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 90,
                          width: 80,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            image: DecorationImage(image: AssetImage('panda.jpg'),
                            fit: BoxFit.fill
                            ),
                            shape: BoxShape.rectangle
                          ),
                        ),
                        Container(
                          height: 90,
                          width: 80,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('doll.jpg'),
                            fit: BoxFit.fill
                            ),
                            shape: BoxShape.rectangle
                          ),

                        )

                      ],
                    ),
                  ],
                ),



                  ],
                ),
              Container(
              height: 300,
              width: 400,
              decoration: BoxDecoration(
                  border: Border.all(),
                  image: DecorationImage(image: AssetImage('doll.jpg'),
                      fit: BoxFit.fill
                  ),
                  shape: BoxShape.rectangle
              ),
                child: Column(
                  children: [
                  
                    Row(
                      children: [
                        SizedBox(
                          width: 150,
                          child: TextFormField(
                            decoration: InputDecoration(
                              icon: Icon(Icons.person),
                              hintText: "hello",
                              border: OutlineInputBorder()
                            ),
                          ),
                        ),
                        ElevatedButton(onPressed: (){}, child: Text('OKAY'))
                      ],
                    ),
                    Row(
                      children: [
                        Container(
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
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Container(
                                    height: 90,
                                    width: 90,
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                      image: DecorationImage(image: AssetImage('panda.jpg'),
                                      fit: BoxFit.fill
                                      ),
                                      shape: BoxShape.rectangle
                                    ),
                                  ),
                                  Container(
                                    height: 90,
                                    width: 90,
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                      image: DecorationImage(image: AssetImage('panda.jpg'),
                                      fit: BoxFit.fill
                                      ),
                                      shape: BoxShape.rectangle
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Container(
                                    height: 90,
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
                                    height: 90,
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
                              ),
                            )
                          ],
                        )
                      ],

                    )
                  ],
                ),
            )
          ],
        ),


    ),
       
      
    );
  }
}

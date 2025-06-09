import 'package:flutter/material.dart';

class Exa extends StatelessWidget {
  const Exa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(45)
                ),
                child: Column(
                  children: [
                    Container(
                      height:160,
                      width:200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(45),
                          topRight: Radius.circular(45)
                        ),
                        image: DecorationImage(image: AssetImage('panda.jpg'),
                        fit: BoxFit.fill
                        ),
                      ),
                    ),
                    Text("hello")


                  ],
                ),


              ),
              Column(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(45)
                      ),
                child: Column(
                  children: [
                    Container(
                      height: 160,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(45),
                          topLeft: Radius.circular(45)
                        ),
                        image: DecorationImage(image: AssetImage('doll.jpg'),
                        fit: BoxFit.fill
                        ),

                      ),
                    ),
                    Text("Hello")
                  ],
                ),
                      
                    )

                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
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
                  child: Column(
                    children: [
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
                              Row(
                                children: [
                                  Container(
                                    height: 90,
                                    width: 90,
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                      image: DecorationImage(image: AssetImage('panda.jpg'),
                                      fit: BoxFit.fill
                                      ),
                                      shape: BoxShape.circle
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
                              Row(
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
                                      image: DecorationImage(image: AssetImage('panda.jpg'),
                                      fit: BoxFit.fill
                                      ),
                                      shape: BoxShape.circle
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                          ),
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 200,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      icon: Icon(Icons.person),
                                      hintText: 'hello',
                                      border: OutlineInputBorder()
                                    ),
                                  ),
                                ),
                              ),
                              ElevatedButton(onPressed: (){}, child: Text('login'))
                            ],
                          ),

                        ],
                      )
                            ],
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

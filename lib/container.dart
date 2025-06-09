import 'package:flutter/material.dart';

class Cont extends StatelessWidget {
  const Cont({super.key});

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
                image: DecorationImage(
                  image: AssetImage('doll.jpg'),
                  fit: BoxFit.fill,

                ),
                shape: BoxShape.circle
              ),
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
      image: DecorationImage(
      image: AssetImage('doll.jpg'),
      fit: BoxFit.fill
      )
      ),

      ),
    ),
    Column(
    children: [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
      height: 100,
      width: 150,
      decoration: BoxDecoration(
      image: DecorationImage(
      image: AssetImage('doll.jpg'),
      fit: BoxFit.fill
      ),
      shape: BoxShape.rectangle
      ),
      ),
    ),
    Container(
    height: 100,
    width: 150,
    decoration: BoxDecoration(
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
          Container(
            height: 400,
            width: 400,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('doll.jpg'),
              fit: BoxFit.fill
              ),
              shape: BoxShape.rectangle
            ),
            child: Row(
              children: [
                SizedBox(width: 20,),
                Container(
                  height: 300,
                  width: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('panda.jpg'),
                    fit: BoxFit.fill
                    ),
                    shape: BoxShape.rectangle
                  ),
                ),
                Column(
                  children: [
                    SizedBox(height: 40,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          image: DecorationImage(image: AssetImage('panda.jpg'),
                          fit: BoxFit.fill
                          ),
                          shape: BoxShape.rectangle

                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 150,
                        width: 150,
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
            ),

          ),



            ],
          )


    );
  }
}

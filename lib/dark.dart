import 'dart:ui';

import 'package:flutter/material.dart';

class Dark extends StatelessWidget {
  const Dark({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(),
          image: DecorationImage(image: AssetImage('panda.jpg'),
          fit: BoxFit.fill
          ),
          shape: BoxShape.rectangle
        ),
        child: Column(
          children: [
             Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('doll.jpg'),
                    fit: BoxFit.fill
                    ),
                    shape: BoxShape.rectangle
                  ),
                  child: ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 20,sigmaY: 20),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                icon: Icon(Icons.person),
                                hintText: "Enter your name",
                                border: OutlineInputBorder()
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                icon: Icon(Icons.panorama_fish_eye_outlined,color: Colors.black,),
                                hintText: "Enter your password",
                                border: OutlineInputBorder()
                              ),
                            ),
                          ),
                          ElevatedButton(onPressed: (){}, child: Text('Login'))
                        ],
                      ),
                    ),
                  ),
                ),]
              ),
            ),


        );



  }
}
class ssss extends StatefulWidget {
  const ssss({super.key});

  @override
  State<ssss> createState() => _ssssState();
}

class _ssssState extends State<ssss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      body: Column(
        children: [
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("doll.jpg"))
            ),
            child: ClipRRect(
              child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 20,sigmaY: 20),
                  child: Center(child: Text("data"))),
            ),
          )
        ],
      ),
    );
  }
}

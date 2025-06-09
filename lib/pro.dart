import 'package:flutter/material.dart';

class Pro extends StatelessWidget {
  const Pro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(child: Icon(Icons.person,color: Colors.cyanAccent,)),
        ),
        backgroundColor: Colors.black,
        
      ),
      body: Column(
        children: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.cyanAccent,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(45),
                  image: DecorationImage(
                    image: AssetImage('doll.jpg'),

                    fit: BoxFit.fill
                  ),
                  shape: BoxShape.rectangle
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.person),
                          hintText: "Enter the name",
                          border: OutlineInputBorder()
                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.panorama_fish_eye),
                          hintText: "Enter your password",
                          border: OutlineInputBorder()
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: (){}, child: Text("login")),
                    )
                  ],
                ),


                ),
           ),
      ],


                ),

        );




      

  }
}

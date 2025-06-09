import 'package:flutter/material.dart';
import 'package:project/col.dart';

import 'Ex.dart';

class Decor extends StatefulWidget {

  const Decor({super.key});

  @override
  State<Decor> createState() => _DecorState();
}

class _DecorState extends State<Decor> {

  bool password=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu,size: 30,color: Colors.black,),
        title: Center(child: Text('LOGIN',style: TextStyle(fontWeight: FontWeight.bold),)),
        backgroundColor: Colors.purple,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.camera),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextFormField(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: "Hello buddy",
                    border: OutlineInputBorder()

                ),
              ),
            ),
            TextField(
              obscureText: password,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Password",
                suffixIcon: IconButton(onPressed: ()
                {
                  setState(() {
                    password=!password;
                  });
                },
                    icon: Icon(Icons.remove_red_eye))
              ),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Dart()),
                );

              }, child: Text('OK')),
            ),
            Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.purple,
                border: Border.all(),
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                  image: AssetImage('doll.jpg'),
                  fit: BoxFit.fill
                ),
                shape: BoxShape.rectangle
              ),
              child: Center(child: Text('GT',style: TextStyle(color: Colors.deepPurple,fontSize: 35,fontWeight: FontWeight.bold),),),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text('GT'),
        title: Center(child: Icon(Icons.home)),
        backgroundColor: Colors.cyan,
        actions: [
          Icon(Icons.menu)

        ],
      ),
      body: Column(
        children: [
          Container(

            child: Image.asset('doll.jpg'),
          ),

          TextFormField(),
          TextFormField(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){}, child: Text('Login')),
          ),
          SizedBox(height: 50,),
          Container(
            height: 100,
            width: 100,
            child: Image.asset('doll.jpg'),
          )
        ],
      ),
    );
  }
}

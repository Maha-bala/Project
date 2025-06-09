import 'package:flutter/material.dart';

class qwerty extends StatefulWidget {
  const qwerty({super.key});

  @override
  State<qwerty> createState() => _qwertyState();
}

class _qwertyState extends State<qwerty> {

  final _keyy = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
            key: _keyy,
          child: Column(
            children: <Widget>[
              TextFormField(
                validator: (input)
                {
                  if(input == null || input.isEmpty )
                  {
                    return "pls enter valid name";
                  }
                },
              ),
              TextFormField(
                validator: (input)
                {
                  if(!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(input!))
                    {
                      return "pls give valid mail";
                    }
                  return null;
                },
              ),

              ElevatedButton(onPressed: (){
                if(_keyy.currentState!.validate())
                  {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("ok valid")));
                  }
              }, child: Text("ok")),
            ],
          )
      ),
    );
  }
}




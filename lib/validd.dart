import 'package:flutter/material.dart';

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  final _keys=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          key: _keys,
          child: Column(
            children: [
              TextFormField(
                validator: (value)
                {
                  if(value==null || value.isEmpty)
                  {
                    return "please enter the valid name";
                  }

                },
              ),
              TextFormField(
                validator: (value)
                {
                  if(!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value!))
                  {
                    return "please enter a valid email";
                  }
                },
              ),
              TextFormField(
                validator: (value)
                {
                  if(!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(value!)){
                    return "Please enter the valid password";
                  }
                },
              ),
              TextFormField(
                validator: (value)
                {
                  if(!RegExp( r'(^(?:[+0]9)?[0-9]{10,12}$)' ).hasMatch(value!))
                  {
                   return "Invalid Mobile number" ;
                  }
                },
              ),
              ElevatedButton(onPressed: (){
                if(_keys.currentState!.validate())
                {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("ok valid")));
                }
              }, child: Text('Okay'))
            ],
          )
      ),
    );
  }
}

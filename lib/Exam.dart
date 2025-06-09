import 'package:flutter/material.dart';

class Out extends StatefulWidget {
  const Out({super.key});

  @override
  State<Out> createState() => _OutState();
}
class _OutState extends State<Out> {
  final _keys=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _keys,
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
                  validator: (value)
                  {
                    if(value==null || value.isEmpty)
                    {
                      return "Please enter the valid name";
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.email),
                    hintText: "Enter your Email Address",
                    border: OutlineInputBorder()
                  ),
                  validator: (value)
                  {
                    if(!RegExp((r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")).hasMatch(value!))
                    {
                      return 'Please enter a valid email';
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.password),
                    hintText: "Password",
                    border: OutlineInputBorder()
                  ),
                  validator: (value)
                  {
                    if(!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(value!))
                    {
                      return "Please enter the valid password";
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.mobile_friendly),
                    hintText: "Mobile no",
                    border: OutlineInputBorder()
                  ),
                  validator: (value)
                  {
                    if(!RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)').hasMatch(value!))
                      {
                        return "please enter the valid mobile number";
                      }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){
                  if(_keys.currentState!.validate())
                  {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Logging in..."),));
                  }
                }, child: Text("okay")),
              )
            ],
          )
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';

import 'bot.dart';
import 'bottom.dart';

class Hom extends StatefulWidget {
  const Hom({super.key});

  @override
  State<Hom> createState() => _HomState();
}

class _HomState extends State<Hom> {

  bool a=false;
  bool password=true;

  TextEditingController con=TextEditingController();
  TextEditingController con1=TextEditingController();

  final _keys=GlobalKey<FormState>();
  fun()
  {
    setState(() {
      if(con.text.isNotEmpty && con1.text.isNotEmpty)
      {
        a=true;
      }
      else
      {
        a=false;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Amazon")),
        backgroundColor: Colors.blue,
      ),
      body: Form(
          key: _keys,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 600,
              width: 600,
              decoration: BoxDecoration(
                border: Border.all(),
                image: DecorationImage(image: AssetImage('assets/panda.jpg'),
                fit: BoxFit.fill
                ),
                shape: BoxShape.rectangle
              ),
                child: ClipRRect(
                  child: BackdropFilter(filter: ImageFilter.blur(sigmaY: 20,sigmaX: 20),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            validator: (i)
                            {
                              if(i==null || i.isEmpty)
                              {
                                return "Please Enter the valid name";
                              }
                            },
                            controller: con,
                            decoration: InputDecoration(
                              icon: Icon(Icons.person),
                              hintText: "Enter the name",
                              border: OutlineInputBorder()
                            ),
                            onChanged: (i)
                            {
                              fun();
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            validator: (i)
                            {
                              if(!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(i!))
                                {
                                  return "Please enter a valid password";
                                }
                              return null;
                            },
                            controller: con1,
                              decoration: InputDecoration(
                                suffixIcon: IconButton(onPressed: ()
                                {
                                  setState(() {
                                    password=!password;
                                  });
                                }, icon: Icon(Icons.remove_red_eye)),
                                icon: Icon(Icons.password),
                                hintText: "Password",
                                border: OutlineInputBorder()
                              ),
                            onChanged: (i)
                            {
                              fun();
                            },
                            obscureText: password,
                          ),
                        ),
                        Visibility(
                          visible: a,
                          child: ElevatedButton(onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Bot())
                            );
                            if(_keys.currentState!.validate())
                            {
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Logging in')));
                            }
                          }, child: Text('Login')),
                        )
                      ],
                    ),
                  ),
                ),
              ),
          ),
          ),
    );
  }
}

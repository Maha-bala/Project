import 'package:flutter/material.dart';

class Visi extends StatefulWidget {
  const Visi({super.key});

  @override
  State<Visi> createState() => _VisiState();
}

class _VisiState extends State<Visi> {

  final _keys =GlobalKey<FormState>();

  bool a=false;

  TextEditingController con=TextEditingController();
  TextEditingController con1=TextEditingController();
  TextEditingController con2=TextEditingController();
  TextEditingController con3=TextEditingController();

  qw()
  {
    setState(() {
      if(con3.text.isNotEmpty && con.text.isNotEmpty && con1.text.isNotEmpty && con2.text.isNotEmpty)
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
      body:  Form(
          key: _keys,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  onChanged: (i)
                  {
                    qw();
                    },
                  validator: (i)
                  {
                    if(!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(i!))
                    {
                      return "please enter the valid email address";
                    }
                  },
                  controller: con,
                  decoration: InputDecoration(
                      icon: Icon(Icons.email),
                      hintText: "Enter your email",
                      border: OutlineInputBorder()
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  onChanged: (i)
                  {
                    qw();
                  },
                  validator: (i)
                  {
                    if(!RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)').hasMatch(i!))
                    {
                      return "Please enter the valid mobile number";
                    }
                  },
                  controller: con1,
                  decoration: InputDecoration(
                      icon: Icon(Icons.mobile_friendly),
                      hintText: "Mobile no",
                      border: OutlineInputBorder()
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  onChanged: (i)
                  {
                    qw();
                  },
                  validator: (i)
                  {
                    if(RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(i!))
                    {
                      return "Please enter the valid password";
                    }
                  },
                  controller: con2,
                  decoration: InputDecoration(
                      icon: Icon(Icons.password),
                      hintText: "Password",
                      border: OutlineInputBorder()
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  validator: (i)
                  {
                    if(i==null || i.isEmpty)
                    {
                      return "please enter the valid name";
                    }
                  },
                  controller: con3,
                  decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: "Name",
                      border: OutlineInputBorder()
                  ),
                  onChanged: (i)
                  {
                    qw();
                  },
                ),
              ),
              Visibility(
                  visible:a,
                  child: ElevatedButton(onPressed: (){
                    if(_keys.currentState!.validate())
                      {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Login')));
                      }

                  }, child: Text('Login'))),
            ],
          )),
    );
  }
}

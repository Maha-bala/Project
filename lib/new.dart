import 'package:flutter/material.dart';

class New extends StatefulWidget {
  const New({super.key});

  @override
  State<New> createState() => _NewState();
}

class _NewState extends State<New> {
  bool a=false;

  fun()
  {
    setState(() {
      if(con.text.isNotEmpty && con1.text.isNotEmpty && con2.text.isNotEmpty && con3.text.isNotEmpty)
      {
        a=!a;
      }
      else
        {
          a=false;
        }
    });
  }

  final _keys=GlobalKey<FormState>();

  TextEditingController con=TextEditingController();
  TextEditingController con1=TextEditingController();
  TextEditingController con2=TextEditingController();
  TextEditingController con3=TextEditingController();

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
                  validator: (i)
                  {
                    if(i==null || i.isEmpty)
                    {
                      return "Please enter a valid name";
                    }
                  },
                  controller: con,
                  decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: "Enter the name",
                    border: OutlineInputBorder()
                  ),
                  onChanged: (value)
                  {
                    setState(() {
                      fun();
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  validator: (i)
                  {
                    if(!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(i!))
                      {
                        return "Please enter the valid Email";
                      }
                  },
                  controller: con1,
                  decoration: InputDecoration(
                    icon: Icon(Icons.email),
                    hintText: "Email",
                    border: OutlineInputBorder()
                  ),
                  onChanged: (value)
                  {
                    setState(() {
                      fun();
                    });
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
                        return "Incorrect password";
                      }
                    return null;
                  },
                  controller: con2,
                  decoration: InputDecoration(
                    icon: Icon(Icons.password),
                    hintText: "Password",
                    border: OutlineInputBorder()
                  ),
                  onChanged: (value)
                  {
                    setState(() {
                      fun();
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  validator: (i)
                  {
                    if(!RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)').hasMatch(i!))
                      {
                        return "Please enter a valid mobile number";
                      }
                  },
                  controller: con3,
                  decoration: InputDecoration(
                    icon: Icon(Icons.mobile_friendly),
                    hintText: "Mobile number",
                  border: OutlineInputBorder()
                  ),
                  onChanged: (value)
                  {
                    setState(() {
                        fun();
                      });
                  },
                ),
              ),
                Visibility(
                visible: a,
                child: ElevatedButton(onPressed: ()
                {
                  if(_keys.currentState!.validate())

                    {ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Logging in")));
                    }
              }, child: Text('Login')),
              )
            ],
          )),
    );
  }
}



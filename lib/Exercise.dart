import 'package:flutter/material.dart';

class Exe extends StatefulWidget {
  const Exe({super.key});

  @override
  State<Exe> createState() => _ExeState();
}

class _ExeState extends State<Exe> {

  final _keys=GlobalKey<FormState>();
  bool password=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Center(
          child: Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("panda.jpg"),
                fit: BoxFit.fill
              ),
              shape: BoxShape.circle
            ),
          ),
        ),
      ),
      body: Container(
        height: 600,
        width: 600,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("panda.jpg"),
            fit: BoxFit.fill
          ),shape: BoxShape.rectangle
        ),
        child: Form(
          key: _keys,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (i)
                    {
                      if (i==null || i.isEmpty)
                      {
                        return "Enter the valid name";
                      }
                    },
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
                    validator: (i)
                    {
                      if(!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(i!))
                      {
                        return "Enter the valid password";
                      }
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      icon: Icon(Icons.password),
                      hintText: "Password"
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: ()
                  {
                    if(_keys.currentState!.validate())
                    {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login")));
                    }
                  }, child: Text("Logging in")),
                )
              ],
            ),
        ),
      ),
    );
  }
}

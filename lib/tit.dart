import 'package:flutter/material.dart';

class title extends StatefulWidget {
  const title({super.key});

  @override
  State<title> createState() => _titleState();
}

class _titleState extends State<title> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(shape: RoundedRectangleBorder(borderRadius:BorderRadius.vertical(bottom: Radius.circular(30))),
        backgroundColor: Colors.black,
        leading: Icon(Icons.arrow_back_ios_new_sharp,color: Colors.white,),
        title: Center(child: Text("Menu",style: TextStyle(color: Colors.white),))
      ),
      body: Column(
        children: [
          Card(
            elevation: 10,

            child: ListTile(
              leading: Icon(Icons.person),
              trailing: Icon(Icons.arrow_drop_down_outlined),
              title: Center(child: Text("Attendance")),
            ),
          )
        ],
      ),
    );
  }
}

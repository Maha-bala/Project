import 'package:flutter/material.dart';

class Visib extends StatefulWidget {
  const Visib({super.key});

  @override
  State<Visib> createState() => _VisibState();
}

class _VisibState extends State<Visib> {


bool a = false;

TextEditingController ctr = TextEditingController();
TextEditingController ctr1 = TextEditingController();
TextEditingController ctr2 = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          TextFormField(
            controller: ctr,
            onChanged: (i){
             setState(() {
               ctr.text.isNotEmpty ? a =true : a =false ;
             });
            },

          ),

           Visibility(
             visible: a,
             child: ElevatedButton(onPressed: (){

             }, child: Text('Ok')),
           ),

          ],
          ),


    );
  }
}

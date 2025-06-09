import 'package:flutter/material.dart';

class Buttonn extends StatefulWidget {
  const Buttonn({super.key});

  @override
  State<Buttonn> createState() => _ButtonnState();
}

class _ButtonnState extends State<Buttonn> {

  TextEditingController con=TextEditingController();

  String val1="",val2="",optr="";

  bool clk = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            controller: con,
          ),

          SizedBox(height: 50,),

          Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              ElevatedButton(onPressed: (){
                if(clk)
                  {
                    val2="1";
                    con.text = val2;
                  }else
                    {
                      val1="1";
                      con.text = val1;
                    }

              }, child: Text("1")),

              ElevatedButton(onPressed: (){
                if(clk)
                {
                  val2="2";
                  con.text = val2;
                }else
                {
                  val1="2";
                  con.text = val1;
                }
              }, child: Text("2")),

              ElevatedButton(onPressed: (){
               con.text = "+";
               optr = "+";
               clk = true;
              }, child: Text("+")),

              ElevatedButton(onPressed: (){
               if(optr == "+")
                 {
                   int a = int.parse(val1);
                   int b = int.parse(val2);

                   int res = a+b;

                   con.text = res.toString();
                 }
              }, child: Text("="))
            ],
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Calcu extends StatefulWidget {
  const Calcu({super.key});

  @override
  State<Calcu> createState() => _CalcuState();
}

class _CalcuState extends State<Calcu> {

  TextEditingController con=TextEditingController();

  String val="",val1="", val2="",opt="";

  bool clk=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(Icons.compare_arrows,color: Colors.white,),
        actions: [Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.medical_information_outlined,color: Colors.white,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.grid_view,color: Colors.white,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.more_vert,color: Colors.white,),
            )
          ],
        )],
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(height: 300,
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: TextFormField(style: TextStyle(color: Colors.white),
                          controller: con,
                        )
                      ),
                    )
                  ],
                ),),
          ),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(onPressed: ()
                      {
                        val1="";
                        val2="";
                        con.text="";
                        }, child: Text("AC",style: TextStyle(fontSize: 20),),style: ElevatedButton.styleFrom(shape: CircleBorder(),padding: EdgeInsets.all(35)),),
                      ElevatedButton(onPressed: ()
                      {
                        con.text="%";
                        opt="%";
                        clk=true;

                      }, child: Text("%",style: TextStyle(fontSize: 20)),style: ElevatedButton.styleFrom(shape: CircleBorder(),padding: EdgeInsets.all(35)),),
                      ElevatedButton(onPressed: ()
                      {

                      }, child: IconButton(onPressed: (){}, icon: Icon(Icons.backspace)),style: ElevatedButton.styleFrom(shape: CircleBorder(),padding: EdgeInsets.all(35)),),
                      ElevatedButton(onPressed: ()
                      {
                        con.text="/";
                        opt="/";
                        clk=true;
                      }, child: Text("/",style: TextStyle(fontSize: 20)),style: ElevatedButton.styleFrom(shape: CircleBorder(),padding: EdgeInsets.all(35)),),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(onPressed: ()
                      {
                        if(clk)
                        {
                          val2+="7";
                          con.text=val2;
                        }
                        else
                        {
                          val1+="7";
                          con.text=val1;
                        }
                      }, child: Text("7",style: TextStyle(fontSize: 20)),style: ElevatedButton.styleFrom(shape:CircleBorder(),padding: EdgeInsets.all(35)),),
                      ElevatedButton(onPressed: ()
                      {
                        if(clk)
                        {
                          val2+="8";
                          con.text=val2;
                        }
                        else
                        {
                          val1+="8";
                          con.text=val1;
                        }
                      }, child: Text("8",style: TextStyle(fontSize: 20)),style: ElevatedButton.styleFrom(shape: CircleBorder(),padding: EdgeInsets.all(35)),),
                      ElevatedButton(onPressed: ()
                      {
                        if(clk)
                        {
                          val2+="9";
                          con.text=val2;
                        }
                        else
                        {
                          val1+="9";
                          con.text=val1;
                        }
                      }, child: Text("9",style: TextStyle(fontSize: 20)),style: ElevatedButton.styleFrom(shape: CircleBorder(),padding: EdgeInsets.all(35)),),
                      ElevatedButton(onPressed: ()
                      {
                        con.text="*";
                        opt="*";
                        clk=true;
                      }, child: Text("*",style: TextStyle(fontSize: 20)),style: ElevatedButton.styleFrom(shape: CircleBorder(),padding: EdgeInsets.all(35)),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(onPressed: ()
                      {
                        if(clk)
                        {
                          val2+="4";
                          con.text=val2;
                        }
                        else
                        {
                          val1+="4";
                          con.text=val1;
                        }
                      }, child: Text("4",style: TextStyle(fontSize: 20)),style: ElevatedButton.styleFrom(shape: CircleBorder(),padding: EdgeInsets.all(35))),
                      ElevatedButton(onPressed: ()
                      {
                        if(clk)
                        {
                          val2+="5";
                          con.text=val2;
                        }
                        else
                          {
                            val1+="5";
                            con.text=val1;
                          }
                      }, child: Text("5",style: TextStyle(fontSize: 20)),style: ElevatedButton.styleFrom(shape: CircleBorder(),padding: EdgeInsets.all(35))),
                      ElevatedButton(onPressed: ()
                      {
                        if(clk)
                        {
                          val2+="6";
                          con.text="6";
                        }
                        else
                          {
                            val1+="6";
                            con.text="6";
                          }
                      }, child: Text("6",style: TextStyle(fontSize: 20)),style: ElevatedButton.styleFrom(shape: CircleBorder(),padding: EdgeInsets.all(35))),
                      ElevatedButton(onPressed: ()
                      {
                        con.text="-";
                        opt="-";
                        clk=true;
                      }, child: Text("-",style: TextStyle(fontSize: 20)),style: ElevatedButton.styleFrom(shape: CircleBorder(),padding: EdgeInsets.all(35))),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    ElevatedButton(onPressed: ()
                    {
                      if (clk)
                      {
                        val2 += "1";
                        con.text  = val2;
                      }
                    else
                    {
                      val1 +="1";
                      con.text=val1;
                    }}, child: Text("1",style: TextStyle(fontSize: 20)),style: ElevatedButton.styleFrom(shape: CircleBorder(),padding: EdgeInsets.all(35))),
                    ElevatedButton(onPressed: ()
                    {
                      if(clk)
                      {
                        val2+="2";
                        con.text=val2;
                      }
                      else
                      {
                        val1+="2";
                        con.text=val1;
                      }
                    }, child: Text("2",style: TextStyle(fontSize: 20)),style: ElevatedButton.styleFrom(shape: CircleBorder(),padding: EdgeInsets.all(35))),
                    ElevatedButton(onPressed: ()
                    {
                      if(clk)
                        {
                          val2+="3";
                          con.text=val2;
                        }
                      else
                      {
                        val1+="3";
                        con.text=val1;
                      }
                    }, child: Text("3",style: TextStyle(fontSize: 20)),style: ElevatedButton.styleFrom(shape: CircleBorder(),padding: EdgeInsets.all(35))),
                    ElevatedButton(onPressed: ()
                    {
                      con.text="+";
                      opt="+";
                      clk=true;
                    }, child: Text("+",style: TextStyle(fontSize: 20)),style: ElevatedButton.styleFrom(shape: CircleBorder(),padding: EdgeInsets.all(35))),
                  ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(onPressed: ()
                      {
                        if(clk)
                          {
                            val2+="00";
                            con.text=val2;
                          }
                        else
                          {
                            val1+="00";
                            con.text=val1;
                          }
                      }, child: Text("00",style: TextStyle(fontSize: 20)),style: ElevatedButton.styleFrom(shape: CircleBorder(),padding: EdgeInsets.all(35))),
                      ElevatedButton(onPressed: ()
                      {
                        if(clk)
                        {
                          val2+="0";
                          con.text=val2;
                        }
                        else
                          {
                            val1+="0";
                            con.text=val1;
                          }
                      }, child: Text("0",style: TextStyle(fontSize: 20)),style: ElevatedButton.styleFrom(shape: CircleBorder(),padding: EdgeInsets.all(35))),
                      ElevatedButton(onPressed: ()
                      {
                        if(clk)
                        {
                          val2+=".";
                          con.text=val2;
                        }
                        else
                        {
                          val1+=".";
                          con.text=val1;
                        }
                      },
                          child: Text(".",style: TextStyle(fontSize: 20)),style: ElevatedButton.styleFrom(shape: CircleBorder(),padding: EdgeInsets.all(35))),
                      ElevatedButton(onPressed: ()
                      {
                        if(opt=="+")
                        {
                          double a=double.parse(val1);
                          double b=double.parse(val2);
                          double res=a+b;

                          con.text=res.toString();
                        }
                        if(opt=="-")
                        {
                          int a=int.parse(val1);
                          int b=int.parse(val2);
                          int res=a-b;

                          con.text=res.toString();
                        }
                        if(opt=="*")
                        {
                          int a=int.parse(val1);
                          int b=int.parse(val2);
                          int res=a*b;

                          con.text=res.toString();
                        }
                        if(opt=="/")
                          {
                            int a=int.parse(val1);
                            int b=int.parse(val2);
                            int res=(a/b) as int;

                            con.text=res.toString();
                          }
                        if(opt==".")
                        {
                          double a=double.parse(val1);
                          double b=double.parse(val2);
                          double res=a+b;

                          con.text=res.toString();
                        }
                        if(opt=="%")
                        {
                          int a=int.parse(val1);
                          int b=int.parse(val2);
                          int res=a%b;

                          con.text=res.toString();
                        }

                        },
                          child: Text("=",style: TextStyle(fontSize: 20)),style: ElevatedButton.styleFrom(shape: CircleBorder(),padding: EdgeInsets.all(35))),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

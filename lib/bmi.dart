import 'package:flutter/material.dart';

class Bmi extends StatefulWidget {
  const Bmi({super.key});

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {

  String bmi="";
  double res=0.0;


  void bmii()
  {
    double hei=double.parse(ctr.text);
    double wei=double.parse(ctr2.text);
    setState(() {
      res=(wei/(hei*hei));
      if(res<18)
      {
        bmi="Underweight";
      }
      else if(res>=18 && res<=24)
      {
        bmi="Normal";
      }
      else if(res>=25 && res<=29)
      {
        bmi="Overweight";
      }
      else if(res>=30 && res<=34)
      {
        bmi="Obese";
      }
      else if(res>=35)
      {
        bmi="Extreme";
      }

    });

  }
  
  TextEditingController ctr=TextEditingController();
  TextEditingController ctr2=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BMI calculator")),
        backgroundColor: Colors.yellow,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: ctr,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Height in meter",

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: ctr2,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Weight"
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: bmii, child: Text("Calculate")),
          ),
          Text("Total:$res"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: ()
            {
              showDialog(context: (context), builder: (BuildContext builder)
              {
                double hei=double.parse(ctr.text);

                double wei=double.parse(ctr2.text);

                double a=hei*100;
                print(a);

                res=(wei/(a*a));
              if(res<18)
              {
                bmi="Underweight";
                return AlertDialog(
                  backgroundColor: Colors.yellow,
                  title: Text("BMI"),
                  content: Text("BMI:$bmi"),
                );
              }
              else if(res>=18 && res<=24)
              {
                bmi="Normal";
                return AlertDialog(
                  backgroundColor: Colors.green,
                  title: Text("BMI"),
                  content: Text("BMI:$bmi"),
                );
              }
              else if(res>=25 && res<=29)
              {
                bmi="Overweight";
                return AlertDialog(
                  backgroundColor: Colors.orange,
                  title: Text("BMI"),
                  content: Text("BMI:$bmi"),
                );
              }
              else if(res>=30 && res<=34)
              {
                bmi="Obese";
                return AlertDialog(
                  backgroundColor: Colors.pink,
                  title: Text("BMI"),
                  content: Text("BMI:$bmi"),
                );
              }
              else if(res>=35)
              {
                bmi="Extreme";
                return AlertDialog(
                  backgroundColor: Colors.red,
                  title: Text("BMI"),
                  content: Text("BMI$bmi"),
                );
              }
              return AlertDialog();

              });
            }, child: Text("BMI")),
          ),
        ],
      ),
    );
  }
}

extension on TextEditingController {
  operator *(int other) {}
}

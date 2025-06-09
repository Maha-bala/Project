import 'package:flutter/material.dart';

class Bmi extends StatefulWidget {
  const Bmi({super.key});

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {

  double height=0.0;
  double weight=0.0;

  void bmi()
  {
    double heig=double.parse(ctr.text);
    double weig=double.parse(ctr2.text);

    setState(() {
      double heisquare=heig*heig;
      double result=weig/heisquare;
    });
  }
  
  TextEditingController ctr=TextEditingController();
  TextEditingController ctr2=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            controller: ctr,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Height"
            ),
          ),
          TextFormField(
            controller: ctr2,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Weight"
            ),
          ),
          ElevatedButton(onPressed: bmi, child: Text("Calculate")),
          ElevatedButton(onPressed: (){}, child: Text("BMI")),

        ],
      ),
    );
  }
}

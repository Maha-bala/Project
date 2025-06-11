import 'package:flutter/material.dart';
import 'package:project/text.dart';

class GST extends StatefulWidget {
  const GST({super.key});

  @override
  State<GST> createState() => _GSTState();
}

class _GSTState extends State<GST> {
  double amt=0.0;
  double inclusive=0.0;
  double ex=0.0;
  double exclusive=0.0;


  void gst()
  {
    var price=double.parse(ctr.text);
    var gsts=double.parse(ctr2.text);
    var pricee=double.parse(ctr.text);
    var gsst=double.parse(ctr2.text);

    setState(() {
      amt=price-(price/(1+gsts/100));
      inclusive=price-amt;
      ex=pricee+(pricee*(gsst/100));
      exclusive=ex;

    });
  }
  TextEditingController ctr=TextEditingController();
  TextEditingController ctr2=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: ctr,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Price",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: ctr2,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "GST"
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: gst, child: Text("Calculate")),
          ),
          ElevatedButton(onPressed: ()
          {
            showModalBottomSheet(context: (context), builder: (BuildContext builder)
           {
             double price=double.parse(ctr.text);
             double gsts=double.parse(ctr2.text);
             amt=price-(price/(1+gsts/100));
             inclusive=price-amt;
             return Container(
               height: 200,
               width: 300,
               color: Colors.yellow,
               child: Column(

                 children: [
                   Text("Inclusive:$inclusive"),
                 ],
               ),

             );
           }
           );

          }, child: Text("Inclusive")),
          Text("GST:$amt"),
          Text("Inclusive:$inclusive"),
          Text("Exclusive:$exclusive"),


          ElevatedButton(onPressed: ()
          {
            showDialog(context: (context), builder: (BuildContext builder)
            {
              double pricee=double.parse(ctr.text);
              double gsst=double.parse(ctr2.text);
              ex=pricee+(pricee*(gsst/100));
              exclusive=ex;
              return AlertDialog(
                title: Text("Alert Message"),
                content: Container(
                  height: 200,
                  width: 200,
                  child: Column(
                    children: [
                      Text("Actual amt is:$pricee"),
                      Text("GST:$gsst"),
                      Text("Exclusive:$exclusive"),
                    ],
                  ),
                ),
              );
            }
            );

          }, child: Text("Exclusive"))

        ],
      ),
    );
  }
}

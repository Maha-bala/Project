import 'package:flutter/material.dart';

// class Listbar extends StatefulWidget {
//   const Listbar({super.key});
//
//   @override
//   State<Listbar> createState() => _ListState();
// }
//
// class _ListState extends State<Listbar> {
//
//   List asd =[ ];
//   TextEditingController ctrl = TextEditingController();
//
//   clk (){
//     setState(() {
//
//     });
//     asd .add (ctrl.text);
//   }
//
//   d(){
//     setState(() {
//
//     });
//     asd.sort();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           TextFormField(
//             controller: ctrl,
//             decoration: InputDecoration(border: OutlineInputBorder()),
//           ),
//           ElevatedButton(onPressed: clk,
//            child: Text("Go")),
//           ElevatedButton(onPressed: (){
//             d();
//            var a= asd.first;
//
//            showDialog(context: (context), builder: (BuildContext){
//              return AlertDialog(
//                title: Text("$a"),
//              );
//            });
//           }, child: Text("Minimum")),
//           ElevatedButton(onPressed: (){
//             d();
//             var b = asd.last;
//             showDialog(context: (context), builder: (BuildContext){
//               return AlertDialog(
//                 title: Text("$b"),
//               );
//             });
//
//           }, child: Text("Maximum")),
//           ElevatedButton(onPressed: (){
//             asd.sort();
//             showDialog(context: (context), builder: (BuildContext){
//               return AlertDialog(
//                 title: Text("$asd"),
//               );
//             });
//           }, child: Text("Ascending Order")),
//           ElevatedButton(onPressed: (){
//             asd.sort();
//
//            var a=  asd.reversed;
//             showDialog(context: (context), builder: (BuildContext){
//               return AlertDialog(
//                 title: Text("$a"),
//               );
//             });
//
//           }, child: Text("Descending Order")),
//           SizedBox(height: 30),
//           Container(
//             height: 400,
//             width: 400,
//             color: Colors.red,
//             child: ListView.builder(
//               itemCount: asd.length,
//                 itemBuilder: (BuildContext,int){
//               return Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(
//                   color: Colors.cyanAccent,
//                   child: ListTile(
//                     leading: SizedBox(
//                      width: 100,
//                       child: Row(
//                         children: [
//                           IconButton(onPressed: (){
//                             asd.update(
//
//                             ){}
//                           }, icon: Icon(Icons.edit)),
//                           SizedBox(width: 20,),
//                           IconButton(onPressed: (){}, icon: Icon(Icons.delete)),
//                         ],
//                       ),
//                     ),
//                     title:Text(asd[int]),
//                   ),
//                 ),
//               );
//             }),
//           )
//         ],
//       ),
//
//     );
//   }
// }


class Sampl extends StatefulWidget {
  const Sampl({super.key});

  @override
  State<Sampl> createState() => _SamplState();
}

class _SamplState extends State<Sampl> {

  TextEditingController name = TextEditingController();
  TextEditingController pass = TextEditingController();

  List a = [];


  add()
  {
    String text1 = name.text;
    String text2 = pass.text;

    a.add("$text1\n$text2");

    setState(() {

    });

  }

  route(String data)
  {
    setState(() {

    });
    Navigator.push(context, MaterialPageRoute(builder: (context)=>qwe(data: data))).
    then((editValue){
      setState(() {

        a[a.indexWhere((element)=>element==data)]= editValue;
      });
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(controller: name,),
          TextFormField(controller: pass,),
          OutlinedButton(onPressed: (){
            add();
          }, child: Text("ok")),

          Container(
            height: 500,
            child: ListView.builder(
                itemCount: a.length,
                itemBuilder: (BuildContext c ,index)
                {
                  return InkWell(
                    onTap: ()
                    {
                      route(a[index]);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: 40,
                          color: Colors.cyanAccent,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(a[index]),
                              InkWell(
                                onTap: (){
                                  setState(() {

                                  });
                                  a.removeAt(index);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.delete),
                                ),
                              )
                            ],
                          )),
                    ),
                  );
                }
            ),
          ),
        ],
      ),
    );
  }
}





class qwe extends StatefulWidget {
  String data;
  qwe({super.key,required this.data});

  @override
  State<qwe> createState() => _qweState();
}

class _qweState extends State<qwe> {


  TextEditingController name = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  void initState() {

    List asd = widget.data.split("\n");

    name = TextEditingController(text: asd[0]);
    pass = TextEditingController(text: asd[1]);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          //Text(widget.data),
          TextFormField(controller: name,),
          TextFormField(controller: pass,),
          OutlinedButton(onPressed: (){
            String editValue = "${name.text}\n${pass.text}";
            Navigator.pop(context,editValue);
          }, child: Text("update")),
        ],
      ),
    );
  }
}



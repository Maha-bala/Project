import 'package:flutter/material.dart';

class Tit extends StatefulWidget {
  const Tit({super.key});

  @override
  State<Tit> createState() => _TitState();
}

class _TitState extends State<Tit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new_sharp,size: 25,),
        backgroundColor: Colors.blueGrey,
        title: Center(child: Text("Menu")),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(elevation: 10,
              child: ListTile(
                selected: true,
                leading: Icon(Icons.perm_contact_cal),
                title: Center(child: Text("Attendance")),
                trailing: Icon(Icons.arrow_circle_right),

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(elevation: 10,
              child: ListTile(
                leading: Icon(Icons.mode_edit),
                title: Center(child: Text("Mock interview")),
                trailing: Icon(Icons.arrow_circle_right_sharp),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(elevation: 10,
              child: ListTile(
                leading: Icon(Icons.payment),
                title: Center(child: Text("Payment report")),
                trailing: Icon(Icons.arrow_circle_right_sharp),
              ),
            ),
          ),Card(elevation: 10,
            child: ListTile(
              leading: Icon(Icons.stacked_bar_chart),
              title: Center(child: Text("All students project")),
              trailing: Icon(Icons.arrow_circle_right_sharp),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(elevation: 10,
              child: ListTile(
                leading: Icon(Icons.home_filled),
                title: Center(child: Text("Leave request")),
                trailing: Icon(Icons.arrow_circle_right_sharp),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(elevation: 10,
              child: ListTile(
                leading: Icon(Icons.notifications_active),
                title: Center(child: Text("Notifications")),
                trailing: Icon(Icons.arrow_circle_right_sharp),
              ),
            ),
          ),
          ElevatedButton(onPressed: (){},

              child: SizedBox(width: 200,
                child: Row(
                  children: [
                    Icon(Icons.arrow_back),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Logout",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    )
                        ],

                      ),
              ),
            ),

]
    ),
    );
  }
}

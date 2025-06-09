import 'package:flutter/material.dart';
import 'package:project/GST.dart';
import 'package:project/screen/aa.dart';
import 'package:project/screen/product.dart';
import 'package:project/screen/spotify.dart';

class Draw extends StatefulWidget {
  const Draw({super.key});

  @override
  State<Draw> createState() => _DrawState();
}

class _DrawState extends State<Draw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Center(child: Text("Dashboard")),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent
              ),
                child: Text("Drawer")),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (builder)=> const Packss()));
              },
            ),
            ListTile(
              leading: Icon(Icons.production_quantity_limits_sharp),
              title: Text("Product"),
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (builder)=> const Product()));
              },
            ),
            ListTile(
              leading: Icon(Icons.add_shopping_cart),
              title: Text("Cart"),
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (builder)=>const GST()));
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart_outlined),
              title: Text("Add product"),
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const Spotify()));
              },
            )
          ],
        ),
      ),
    );
  }
}

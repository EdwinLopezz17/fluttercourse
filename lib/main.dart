import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home:Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            child: Image.network("https://images.pexels.com/photos/1591375/pexels-photo-1591375.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Image.network("https://images.pexels.com/photos/788200/pexels-photo-788200.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Image.network("https://images.pexels.com/photos/1591375/pexels-photo-1591375.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Image.network("https://images.pexels.com/photos/788200/pexels-photo-788200.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
          ),
        ],
      ),
    );
  }
}



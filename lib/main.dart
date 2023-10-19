import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home:MyHomePageState(),
    );
  }
}

class MyHomePageState extends StatefulWidget {

  @override
  State<MyHomePageState> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePageState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Files, Columns, Bottons"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children:<Widget> [
          Container(
            width: MediaQuery.of(context).size.width,
            child: Text("Hello 01", textAlign: TextAlign.center,),
          ),
          Text("Hello 02"),
          Text("Hello 03, Hello 04")
        ],
      )
    );
  }
}



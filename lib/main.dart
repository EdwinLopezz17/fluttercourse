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

  Empresa _facebook = new Empresa(
    "Meta", "Mark", 45000
  );
  Empresa _google = new Empresa(
      "Google", "Larry", 75020
  );
  
  @override
  void initState(){
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API consumption"),
      ),
      body: Center(
        child: Text("Hello",
        style: TextStyle(fontSize: 24),),
      )
    );
  }

}

class Empresa{
  late String name;
  late String owner;
  late int rentYear;

  Empresa(String name, String owner, int rentYear){
    this.name = name;
    this.owner = owner;
    this.rentYear = rentYear;
  }
}


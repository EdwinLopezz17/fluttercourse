
import 'package:courseflutter/pages/HomePage.dart';
import 'package:courseflutter/pages/UserPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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

  int _actualPage = 0;
  List<Widget>_pages=[
    HomePage(),
    UserPage(),
  ];

  @override
  void initState() {
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Botton Navigation Bar"),
        ),
        body: _pages[_actualPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _actualPage,
        onTap: (index){
          setState(() {
            _actualPage = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            label: "Users",
          ),
        ],
      ),

    );
  }
}


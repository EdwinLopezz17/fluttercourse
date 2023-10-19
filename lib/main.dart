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
      body:
        bodyWidget(),

      );

  }
}


Widget bodyWidget(){
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(image: NetworkImage("https://images.pexels.com/photos/461940/pexels-photo-461940.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
          fit: BoxFit.cover
      )
    ),
    child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            tittle(),
            userName(),
            password(),
            SizedBox(
              height: 50.0,
            ),
            buttonLogIn(),
          ],
        ),
    ),
  );
}

Widget tittle(){
  return
    Text("Sing In",
      style: TextStyle(color: Colors.white, fontSize: 40.0, fontWeight: FontWeight.bold),
  );
}
Widget userName(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    child: TextField(
      decoration: InputDecoration(
        //hintText: "User Name",
        labelText: "User Name",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}
Widget password(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        //hintText: "Password",
        labelText: "Password",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}
Widget buttonLogIn(){
  return TextButton(
    onPressed: () {},
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
        EdgeInsets.symmetric(horizontal: 80, vertical: 15),
      ),
    ),
    child: Text("Log In",
      style: TextStyle(
        fontSize: 25,
        color: Colors.white,
      ),
    ),
  );
}
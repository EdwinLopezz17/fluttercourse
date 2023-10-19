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
  bool _subscribed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.redAccent,
              ),
              child: Text("Subscribe",
              style: TextStyle(
                fontSize: 20.0,
                color: Color(0xff445533),
              ),),
              onPressed: ()=>{
                _showAlert(context),
              },
            ),
            SizedBox(
              height: 50,
            ),
            Text(
                _subscribed ? "Subscribed" : " No Subscribed"
            )
          ],
        ),
      )
    );
  }


  void _showAlert(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Hello"),
          content: Text(
              _subscribed ? "Do you want to stop following this channel?":"Are you sure you want to subscribe?"
          ),
          actions: [
            TextButton(
              child: Text("No"),
              onPressed: () {
                print("No");
                Navigator.pop(context);
              },
            ),
            TextButton(
              child: Text("Yes"),
              onPressed: () {
                print("Yes");
                _subscribed = !_subscribed;
                setState(() {
                });
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}




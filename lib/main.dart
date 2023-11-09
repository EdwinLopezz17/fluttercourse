import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My App",
      home:InitView(),
    );
  }
}


class InitView extends StatefulWidget {
  @override
  State<InitView> createState() => _InitViewState();
}

class _InitViewState extends State<InitView> {
  int value= 0;

  @override
  void initState(){
    super.initState();
    _loadPreferences();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferences'),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  child: Text(value.toString(),
                    style: TextStyle(
                      fontSize: 30.0,
                    ),)
              ),
              ElevatedButton(
                  onPressed: _changeValue,
                  child: Text("Plus Value"),
              )
            ],
          )
      ),
    );
  }

  _changeValue() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    preferences.setInt("value", value);

    setState(() {
      value++;
    });
  }
  _loadPreferences()async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      value = preferences.getInt("value") ?? 0;
    });
  }
}

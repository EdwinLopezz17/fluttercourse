
import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Here is new page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(

          children: [
            Text("Example text", style: TextStyle(
              fontSize: 25,
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
            ),),
            Text("Lorem ..."),

            ElevatedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Acep all",
                  style: TextStyle(
                    fontSize: 20,
                  ),),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
              onPressed: ()=>{
                Navigator.pop(context),
              },
            ),
          ],
        ),
      ),
    );
  }
}

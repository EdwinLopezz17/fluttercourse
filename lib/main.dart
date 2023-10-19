import 'dart:convert';

import 'package:courseflutter/models/Gif.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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

  Future<List<Gif>> _listGifs = Future<List<Gif>>.value([]);

  Future <List<Gif>> _getGifs() async {
    final Uri url = Uri.parse('https://api.giphy.com/v1/gifs/trending?api_key=F2OdyAZosYQkpVLV5NLxZXz20Mdz6nzz&limit=20&offset=0&rating=g&bundle=messaging_non_clips');

    final response = await http.get(url);

    List<Gif> gifs = [];

    if (response.statusCode == 200) {
      String body = utf8.decode(response.bodyBytes);

      final jsonData = jsonDecode(body);

      for (var item in jsonData["data"]){
        gifs.add(
          Gif(item["title"],item["images"]["fixed_width_small"]["url"])
        );
      }

      return gifs;

    } else {
      throw Exception("Failed api");
    }
  }

  @override
  void initState(){
    _listGifs = _getGifs();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Api Consumo"),
        ),
      body:FutureBuilder(
        future: _listGifs,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            print(snapshot.error);
            return Text("Error");
          } else if (!snapshot.hasData) {
            return Text("No data available");
          } else {
            return GridView.count(
              crossAxisCount: 2,
              children: _listGifsWidgets(snapshot.data!),
            );
          }
        }
        ,
      ),
    );
  }


  List<Widget> _listGifsWidgets(List<Gif>data){
    List<Widget> gifs = [];
    for ( var gif in data){
      gifs.add(Card(
        child: Column(
          children: [

            Expanded(child: Image.network(gif.url, fit: BoxFit.fill,)),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Text(gif.name),
            ),
          ],
        ),
      )
      );
    }
    return gifs;
  }
}

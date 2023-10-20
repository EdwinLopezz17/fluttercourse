
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Animated extends StatefulWidget {
  const Animated({super.key});

  @override
  State<Animated> createState() => _AnimatedState();
}

class _AnimatedState extends State<Animated> {

  double _width = 100.0;
  double _heigth = 100.0;
  Color _color = Colors.blue;
  BorderRadius _borderRadius = BorderRadius.circular(10);

  void _changeContainer(){

    final random = Random();
    _width = random.nextInt(350).toDouble();
    _heigth = random.nextInt(350).toDouble();
    _color = Color.fromRGBO(random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
    _borderRadius = BorderRadius.circular(random.nextInt(30).toDouble());

    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child:Center(
          child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            curve: Curves.fastOutSlowIn,
            width: _width,
            height: _heigth,
            decoration: BoxDecoration(
              borderRadius: _borderRadius,
              color: _color,
            ),
          ),
        ),),
        ElevatedButton(
            onPressed: _changeContainer,
            child: Text("Animate")
        )
      ],
    );
  }
}

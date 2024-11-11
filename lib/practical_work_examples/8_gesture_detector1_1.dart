import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var colors = [
    Colors.red,
    Colors.blue,
    Colors.yellow,
    Colors.green
  ];

  var myColor = Colors.blue;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: GestureDetector(
        onTap: (){
          setState(() {
            myColor = colors[Random().nextInt(colors.length)];
          });
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: myColor,
          child: Center(
              child: Text(
            "Tap to change Color",
            style: TextStyle(fontSize: 50),
          )),
        ),
      ),
    );
  }
}

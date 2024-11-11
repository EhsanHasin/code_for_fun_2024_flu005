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

  var myColor = Color.fromARGB(255, 100, 100, 100);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: GestureDetector(
        onTap: (){
          setState(() {
            var r = Random();
            myColor = Color.fromARGB(255, r.nextInt(255), r.nextInt(255), r.nextInt(255));
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

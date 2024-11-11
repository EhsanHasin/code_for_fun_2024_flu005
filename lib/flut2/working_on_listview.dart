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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(width: double.infinity, height: 100, color: Colors.yellow, child: Text("1"),),
          Container(width: double.infinity, height: 100, color: Colors.red, child: Text("2"),),
          Container(width: double.infinity, height: 100, color: Colors.yellow, child: Text("3"),),
          Container(width: double.infinity, height: 100, color: Colors.red, child: Text("4"),),
          Container(width: double.infinity, height: 100, color: Colors.yellow, child: Text("5"),),
          Container(width: double.infinity, height: 100, color: Colors.red, child: Text("6"),),
          Container(width: double.infinity, height: 100, color: Colors.yellow, child: Text("7"),),
          // Container(width: 300, height: 100, color: Colors.red, child: Text("8"),),
          // Container(width: 300, height: 100, color: Colors.yellow, child: Text("9"),),
          // Container(width: 300, height: 100, color: Colors.red, child: Text("9"),),
          // Container(width: 300, height: 100, color: Colors.yellow, child: Text("9"),),
        ],
      ),
    );
  }
}

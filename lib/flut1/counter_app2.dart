import 'package:flutter/material.dart';
var count = 0;
void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(
        count.toString(),
        style: TextStyle(
          fontSize: 40,
          color: Colors.blue,
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          count++;
          print("Counter = $count");
        },
        child: Icon(Icons.add, color: Colors.red,),
      ),
    );
  }
}


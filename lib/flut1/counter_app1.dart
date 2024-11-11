import 'package:flutter/material.dart';
var count = 0;
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(child: Text(
        count.toString(),
        style: TextStyle(
          fontSize: 40,
          color: Colors.blue,
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: click,
        child: Icon(Icons.add, color: Colors.red,),
      ),
    ),
  ));
}

void click(){
  count++;
  print("counter = $count");
}

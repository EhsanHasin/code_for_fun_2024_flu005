import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            height: 400,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(width: 200, height: 200, color: Colors.green, child: Center(child: Text("c1")),),
                Container(width: 100, height: 100, color: Colors.blue, child: Center(child: Text("c2")),),
                Container(width: 50, height: 50, color: Colors.red, child: Center(child: Text("c3")),),
              ],
            ),
          ),
        ),
      ),
    )
  );
}


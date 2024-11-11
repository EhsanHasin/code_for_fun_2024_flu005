import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Flutter in ", style: TextStyle(color: Colors.blue),),
            Text("Code4Fun ", style: TextStyle(color: Colors.green),),
            Text("is Great", style: TextStyle(color: Colors.purple),),
            Icon(Icons.heart_broken),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Flutter in ", style: TextStyle(color: Colors.blue),),
                Text("Code4Fun ", style: TextStyle(color: Colors.green),),
                Text("is Great", style: TextStyle(color: Colors.purple),),
                Icon(Icons.heart_broken),

              ],
            ),
          ],
        ),
      ),
    )
  );
}
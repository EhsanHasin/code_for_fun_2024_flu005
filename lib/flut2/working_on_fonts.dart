import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Working on Fonts"),
                Text("Text with font 1", style: TextStyle(fontSize: 30, fontFamily: "x", fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),),
                Text("Text with font 2", style: TextStyle(fontSize: 30, fontFamily: 'y'),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

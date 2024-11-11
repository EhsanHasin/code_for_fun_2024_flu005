import 'package:flutter/material.dart';

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
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: Text("Click Me")),
            GestureDetector(
                onTap: () {
                  print("you clicked");
                },
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.purple,
                )),
            GestureDetector(
                onDoubleTap: () {
                  print("you double clicked");
                },
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                )),
            GestureDetector(
                onLongPress: () {
                  print("you pressed the container for a long time");
                },
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                )
            ),
            GestureDetector(
                onTap: () {
                  print("you clicked");
                },
                onDoubleTap: () {
                  print("you double clicked");
                },
                onLongPress: () {
                  print("you pressed the container for a long time");
                },
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.black,
                )
            ),
          ],
        ),
      ),
    );
  }
}

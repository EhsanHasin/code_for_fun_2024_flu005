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
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
            mainAxisExtent: 300
          ),
          scrollDirection: Axis.horizontal,
          reverse: false,
          children: [
            Container(
              height: 100,
              child: Text('item1'),
              color: Colors.lightBlue,
            ),
            Container(
              height: 100,
              child: Text('item2'),
              color: Colors.lightBlue,
            ),
            Container(
              height: 100,
              child: Text('item3'),
              color: Colors.lightBlue,
            ),
            Container(
              height: 100,
              child: Text('item'),
              color: Colors.lightBlue,
            ),
            Container(
              height: 100,
              child: Text('item'),
              color: Colors.lightBlue,
            ),
            Container(
              height: 100,
              child: Text('item'),
              color: Colors.lightBlue,
            ),
            Container(
              height: 100,
              child: Text('item'),
              color: Colors.lightBlue,
            ),
            Container(
              height: 100,
              child: Text('item'),
              color: Colors.lightBlue,
            ),
            Container(
              height: 100,
              child: Text('item'),
              color: Colors.lightBlue,
            ),
            Container(
              height: 100,
              child: Text('item'),
              color: Colors.lightBlue,
            ),
            Container(
              height: 100,
              child: Text('item'),
              color: Colors.lightBlue,
            ),
          ],
        ),
      ),
    );
  }
}

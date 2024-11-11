import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        body: YellowContainer(),
      ),
    )
  );
}

class YellowContainer extends StatefulWidget {
  const YellowContainer({super.key});

  @override
  State<YellowContainer> createState() => _YellowContainerState();
}

class _YellowContainerState extends State<YellowContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
     color: Colors.yellow,
    );
  }
}

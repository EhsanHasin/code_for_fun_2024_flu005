import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("one"),
              BlueContainer(),
              Text("two"),
              BlueContainer(),
              Text("three"),
              BlueContainer(),
            ],
          ),
        ),
      ),
    )
  );
}

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("test");
  }
}

class RedText extends StatelessWidget {
  RedText(this.data, {super.key});
  
  var data;
  
  @override
  Widget build(BuildContext context) {
    return Text(data, style: TextStyle(color: Colors.red),);
  }
}

class BlueContainer extends StatelessWidget {
  const BlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.blue, width: 100, height: 100,);
  }
}


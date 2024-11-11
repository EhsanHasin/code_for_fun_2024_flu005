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
      body: ElevatedButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (c)=> SecondPage("two")));
      }, child: Text("Go to Second Page")),
    );
  }
}


class SecondPage extends StatelessWidget {
  SecondPage(this.data, {super.key});
  var data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text("My data = $data"),
    );
  }
}

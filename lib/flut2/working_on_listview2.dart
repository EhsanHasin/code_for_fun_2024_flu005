import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var items = [
    Text("786"),
    TextField(),
    TextField(),
    ElevatedButton(onPressed: (){}, child: Text("ok")),
    ElevatedButton(onPressed: (){}, child: Text("noky")),
    ElevatedButton(onPressed: (){}, child: Text("cancel")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        separatorBuilder: (b,i)=> Divider(color: Colors.yellow, height: 5, thickness: 5,),
        itemCount: items.length,
        itemBuilder: (c,i) {
          return items[i];
        },
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  MyContainer(this.number, {super.key});
  var number;
  @override
  Widget build(BuildContext context) {
    return Container(width: double.infinity, height: 100, color: Colors.blue, child: Center(child: Text("number $number",style: TextStyle(fontSize: 25),)),);
  }
}


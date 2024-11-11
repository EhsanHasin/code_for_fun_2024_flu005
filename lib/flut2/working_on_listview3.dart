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

  var sel = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (c,i){
          return ListTile(
            title: Text("List ${i+1}"),
            subtitle: Text(DateTime.now().toString()),
            leading: Icon(Icons.person),
            trailing: Icon(Icons.chevron_right),
            iconColor: Colors.blue,
            selected: sel,
            splashColor: Colors.limeAccent,
            onTap: (){
              print("item ${i+1}");
            },
            onLongPress: (){
              setState(() {
                // sel = true;
              });
            },
          );
        },
      ),
    );
  }
}


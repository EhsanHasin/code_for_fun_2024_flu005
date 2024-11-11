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
  List<Map<String, String>> notes = [
    {
      "t": "a is title 1",
      "d": "This is a description",
      "date": DateTime.now().toString()
    },
    {
      "t": "b is title 2",
      "d": "This is a description",
      "date": DateTime.now().toString()
    },
    {
      "t": "c is title 3",
      "d": "This is a description",
      "date": DateTime.now().toString()
    },
    {
      "t": "Karim is title 4",
      "d": "This is a description",
      "date": DateTime.now().toString()
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: notes.length,
          itemBuilder: (c, i) {
            return ListTile(
              leading: CircleAvatar(
                child: Text("${notes[i]["t"]?[0].toUpperCase()}", style: TextStyle(fontSize: 25),),
              ),
              title: Text("${notes[i]["t"]}"),
              subtitle: Text("${notes[i]["d"]}"),
              trailing: GestureDetector(
                onTap: () {
                  notes.removeAt(i);
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("deleted 😉")));
                  setState(() {});
                },
                child: Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
              ),
              onTap: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text("${notes[i]} $i")));
              },
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          notes.add({
            "t": "this is title 5",
            "d": "This is a description",
            "date": DateTime.now().toString()
          });
          setState(() {});
        },
        child: Text("+"),
      ),
    );
  }
}

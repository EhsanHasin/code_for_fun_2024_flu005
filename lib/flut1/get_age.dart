import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: MyApp(),
    )
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  var age = 0;
  var dob;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Get Age Application", style: TextStyle(fontSize: 30, color: Colors.blue),),
            SizedBox(height: 20,),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  label: Text("Enter your DOB"),
                  border: OutlineInputBorder()
              ),
              onChanged: (text){
                dob = text;
              },
            ),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              setState(() {
                age = 1403 - int.parse(dob);
              });
            }, child: Text("Get Age")),
            SizedBox(height: 30,),
            Text("You are $age years old")
          ],
        ),
      ),
    );
  }
}

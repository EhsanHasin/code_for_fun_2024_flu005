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
            GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (c)=> ViewImage()));
                },
                child: Tooltip(
                    message: "Click to View",
                    child: Image.asset('assets/images/computer-mouse.png', width: 50, height: 50,))),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("I do'nt have an accont "),
                GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (c)=> SingUpPage()));
                    },
                    child: Text("Sign up", style: TextStyle(color: Colors.blue),))
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ViewImage extends StatelessWidget {
  const ViewImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset('assets/images/computer-mouse.png', width: double.infinity, height: double.infinity, fit: BoxFit.cover,),
    );
  }
}

class SingUpPage extends StatelessWidget {
  const SingUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


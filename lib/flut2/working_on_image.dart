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
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Working on Image"),
                Image(image: NetworkImage("https://blog.solguruz.com/wp-content/uploads/2023/11/Flutter-for-Hybrid-Apps-Why-Flutter-is-the-Best-Platform-to-Make-Hybrid-Apps.png"), width: 100,),
                Image.network("https://blog.solguruz.com/wp-content/uploads/2023/11/Flutter-for-Hybrid-Apps-Why-Flutter-is-the-Best-Platform-to-Make-Hybrid-Apps.png", height: 200,),
                Image(image: AssetImage("assets/images/alarm-clock.png")),
                Image.asset("assets/images/computer-mouse.png"),
                Image.network("https://blog.solguruz.com/wp-content/uploads/2023/11/Flutter-for-Hybrid-Apps-Why-Flutter-is-the-Best-Platform-to-Make-Hybrid-Apps.png", height: 200, width: 50, fit: BoxFit.fill,),
                CircleAvatar(child: Image(image: AssetImage("assets/images/alarm-clock.png"), width: 50, height: 10, fit: BoxFit.contain,),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

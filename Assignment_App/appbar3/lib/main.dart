import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title:const Text("Hello Core2 Web",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w400
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body:Center(
          child: Container(
            height: 200,
            width: 360,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}

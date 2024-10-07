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
        appBar: AppBar(
          title:const Text("DEMO",
          style: TextStyle(
            fontSize:30,
            fontWeight: FontWeight.w500
          ),
          ),
          centerTitle: true,
          backgroundColor:Colors.blue,
        ),
        body:
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            Container(
              width: 100,
              height: 150,
              color: Colors.black,
            ),
            Container(
              width: 100,
              height: 150,
              color: Colors.red,
            ),
            Container(
              width: 100,
              height: 150,
              color: Colors.blue,
            ),
            Container(
              width: 100,
              height: 150,
              color: Colors.green,
            ),
            Container(
              width: 100,
              height: 150,
              color: Colors.yellow,
            ),
            Container(
              width: 100,
              height: 150,
              color: Colors.pink,
            ),
            Container(
              width: 100,
              height: 150,
              color: Colors.yellow,
            ),
            Container(
              width: 100,
              height: 150,
              color: Colors.red,
            ),
            Container(
              width: 100,
              height: 150,
              color: Colors.green,
            ),
            Container(
              width: 100,
              height: 150,
              color: Colors.blue,
            ),
            Container(
              width: 100,
              height: 150,
              color: Colors.black,
            ),
            Container(
              width: 100,
              height: 150,
              color: Colors.amber,
            ),
          ],),
        )
      ),
    );
  }
}

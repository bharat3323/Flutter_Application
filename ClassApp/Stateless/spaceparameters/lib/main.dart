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
          title:const Text("Column",
          style: TextStyle(
            fontSize:20,
            fontWeight: FontWeight.w500
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 100,
              width: 100,
              color:Colors.amber,
            ),
              Container(
              height: 100,
              width: 100,
              color:Color.fromARGB(255, 26, 25, 28),
            ),
              Container(
              height: 100,
              width: 100,
              color:const Color.fromARGB(255, 89, 79, 49),
            )
          ],
          
        ),
      ),
    );
  }
}

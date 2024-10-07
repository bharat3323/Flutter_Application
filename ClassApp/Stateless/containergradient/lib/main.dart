import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title: const Text("Container",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child:Container(
            width:200,
            height: 200,
            alignment: Alignment.bottomLeft,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end:Alignment.bottomLeft,
                colors: [
                  Colors.blue,
                  Colors.pink,
                ],
              ),
            ),
            child:const Text(
              "hello",
              style:TextStyle(
                fontSize:30,
                fontWeight: FontWeight.w400,
                color: Colors.black
              ),
            ),
          ),
          
        ),
      ),
    );
  }
}

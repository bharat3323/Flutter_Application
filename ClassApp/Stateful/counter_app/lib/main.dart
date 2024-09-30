
import 'dart:ui' show lerpDouble;
import 'package:flutter/material.dart';

void main() {
  runApp(const CountApp());
}

class CountApp extends StatefulWidget {
  const CountApp({super.key});

  @override
  State<CountApp> createState() => _CountAppState();
}

class _CountAppState extends State<CountApp> {
  int count=0;
  @override

  Widget build(BuildContext context) {
    return  MaterialApp(
      title:"Counter App",
      home: Scaffold(
        appBar: AppBar(
          title:const Text("counter App"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Text("$count"),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          count++;
          setState((){});
  },
  child: const Icon(Icons.add),
  ),
      ),
    );
  }
}

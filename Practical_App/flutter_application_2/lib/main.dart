import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    title: "core2web",
    home:TestApp(),
    );
  }
}
class TestApp extends StatelessWidget{
  const TestApp({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("first App"),
        backgroundColor: Colors.blue,
      ),
      body:Center( 
     child: Container(
        height: 200,
        width:200,
        
        decoration: const BoxDecoration(
          color: Colors.amber,
          shape:BoxShape.circle,
        ),
      ),
      )
    );
  }
  }

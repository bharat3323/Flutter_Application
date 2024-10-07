import 'package:flutter/material.dart';
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
          title:const Text("Demo",
          style:TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w300,
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
          actions: [
            IconButton(
              icon:Icon(Icons.search),
              onPressed: (){

              },
              ),
          ],
        ),
    
        body: const Center(
      
        ),
      ),
    );
  }
}

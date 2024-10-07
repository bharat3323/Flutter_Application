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
          title:const Text("App Bar",
          style:TextStyle(
            fontSize:30,
            fontWeight: FontWeight.w500,
          )
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: (){
              },
            ),
            IconButton(
              icon:Icon(Icons.access_alarm),
              onPressed: (){

              },
            )

          
          ]
        ),
        body: Center(
        ),
      ),
    );
  }
}

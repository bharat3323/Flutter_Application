import 'package:flutter/material.dart';

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
          title: const Text("Column Demo",
          style:TextStyle(
            fontSize:30,fontWeight: FontWeight.w500),
          ),
        centerTitle:true,
        backgroundColor: Colors.blue,

        ),
        body: Container(
          height: MediaQuery.of(context).size.width,
          color: Color.fromARGB(255, 98, 107, 117),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                color:Color.fromARGB(255, 0, 0, 0),
              )
            ],
          )

        ),
      ),
    );
  }
}

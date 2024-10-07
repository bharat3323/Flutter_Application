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
        appBar: AppBar(
          title: const Text("Column Demo",
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.w400
          ),
          ),
          centerTitle: true,
          backgroundColor:Colors.blue,

        ),
        body:SingleChildScrollView(

       child:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2dVbLMzlaeJnL5C6RpZ8HLRECJhH6ILEGKg&s"
            ),
          Container(
            height: 200,
            width: 200,
            color: Colors.amber,
          ),
            Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2dVbLMzlaeJnL5C6RpZ8HLRECJhH6ILEGKg&s"
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.green,
            ),
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2dVbLMzlaeJnL5C6RpZ8HLRECJhH6ILEGKg&s"
            ),
             Container(
              height: 200,
              width: 200,
              color: Colors.red,
             )
          ],
        )
        )

      ),
      );
    
  }
}

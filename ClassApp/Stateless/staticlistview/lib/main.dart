import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
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
        appBar: AppBar(
          title: const Text("Deno",
          style: TextStyle(
        fontSize: 50,fontWeight: FontWeight.w400),
          ),
          centerTitle:true,
          backgroundColor:Colors.amber,
        ),
        body: ListView(
          children: [
            Image.network(
              "https://media.istockphoto.com/id/1191834325/photo/woman-with-index-finger-on-lips-asking-to-be-quiet-or-keep-secret.jpg?s=612x612&w=0&k=20&c=w-5MBbMc8E96QJDY3x3xpXFj5omg5qTI7DLrUtu-UTk="
            ),
           const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          const  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "love is care",
                  style:TextStyle(
                    fontSize:30,
                    fontWeight:FontWeight.w400,
                  ),
                ),
              ],
            ),
             Image.network(
              "https://media.istockphoto.com/id/1191834325/photo/woman-with-index-finger-on-lips-asking-to-be-quiet-or-keep-secret.jpg?s=612x612&w=0&k=20&c=w-5MBbMc8E96QJDY3x3xpXFj5omg5qTI7DLrUtu-UTk="
            ),
            GestureDetector(
              onTap:(){
                print("Button Pressed");
              },

            child:Container(
              height:50,
              width: 50,
              color:Colors.amber,
              child:const Text("Press me",
              )
            ),
            ),
          ],
      
      ),
      )
    );
  }
}

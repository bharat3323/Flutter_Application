import"package:flutter/material.dart";
import "package:flutter/rendering.dart";
import "package:flutter/widgets.dart";
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title:const Text("Container",
          style:TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body:Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.black,
              ),
              Container(
                height: 200,
                width:200,
                color: Colors.amber,
              )
            ],
          ),
        )
      )
    );
  }
}
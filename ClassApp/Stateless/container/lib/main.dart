import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
void main(){
  runApp(
   MaterialApp(
      title:"First App",
      home:Scaffold(
        appBar:AppBar(
          title: const Text("Container"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        
        ),
        body:Center(
          child:Container(
          height:300,
          width:300,
          color:Colors.amber,
          child: Text("c2w"),
          ),

        ),
      ),

    ),
  );
}
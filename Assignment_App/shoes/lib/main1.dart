import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context ){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Shoes(),
    );
  }
}

class Shoes extends StatefulWidget{
  const Shoes({super.key});

  @override 
  State createState()=> _ShoesState();
}
class _ShoesState extends State{
   @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
      title:Text("My Cart",
      ),
      ),
    );
  }
}
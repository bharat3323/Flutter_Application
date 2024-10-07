import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

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
        leading:const Icon(
          Icons.arrow_back_outlined),
      title:const Text("My Cart",
      style: TextStyle(
        fontSize:30,
        fontWeight: FontWeight.w700,
        color: Colors.deepPurple
      ),
      ),
      centerTitle: true,
      ),
      body:  Column(children: [
          Container(
            width: MediaQuery.of(context).size.width,
             height: 170,
             color: Colors.grey,
           child:   Row(
              children: [
              Container(
                width: 150,
             child:  Image.asset("assets/image1.jpg"),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                Text("Nike shoes",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
                ),
                SizedBox(
                  width: 150,
                  child:Text("with iconic style and legendary confort on repeat")
                ),
                Row(
                  children: [
                    const SizedBox(
                      child: Text("\$570",
                      style:
                      TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                      ),
                    ),
                    const Icon(Icons.remove),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(border: Border.all()),
                    ),
                    const Icon(Icons.add),
                  ],
                )
                
              ],
              
         ),
         
              ),
              ],
            ),
            ),
            
            
        ],
          ),
    
    
    );
  }
}
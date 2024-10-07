import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:const Text("flag"),
          centerTitle: true,
          backgroundColor:Colors.blue
        ),
        body: Center(
          child:Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                 children:[const SizedBox(
                  height:50,
                 ),
                  Container(
                width: 10,
                height:350,
                color:Colors.black
              ),
              Column(children: [
                 Container(
              width:250,
              height:35,
              color:Colors.orange    
                         
              ),
              Container(
                width:250,
                height: 35,
                color:Colors.white,
                child: Image.network(
                  "https://photomedia.in/wp-content/uploads/2023/07/ashok-chakra-1024x1024.png"
                ),
              ),
              Container(
                width:250,
                height: 35,
                color:Colors.green,
              )
              
              ]
              )
                 ],
              ),
               ],
          )
        ),
      ),
    );
  }
}

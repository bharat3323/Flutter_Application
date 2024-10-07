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
        appBar:AppBar(
          title: const Text("Image",
         style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w500,
         ), 
         ),
         centerTitle: true,
         backgroundColor: Colors.blue,
        ),
        body:Column(
          children: [
            Container(
              height:150,
              width:150,
              color: Colors.black,
             child:  Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbUzlRQSYG4xNn_fbbjpbxb9g6E0PvmP-ZClkrQdqlqxNf8Xg0SOCKHrx2n2MYr4uu3Uo&usqp=CAU",
             fit: BoxFit.cover,)
            ),
             Container(
              height:150,
              width:150,
              color: Colors.amber,
             child:  Image.network("https://w0.peakpx.com/wallpaper/126/436/HD-wallpaper-jr-ntr-actor-hero-south-indian.jpg",
             fit: BoxFit.cover,)
             ),
             Container(
              height:150,
              width:150,
              color: Colors.blue,
             child:  Image.network("https://akm-img-a-in.tosshub.com/indiatoday/images/story/201905/tiger_shroff_0.png?size=690:388",
             fit:BoxFit.cover)
             ),
          ],
        )
      ),
    );
  }
}

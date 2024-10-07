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
      home: ShoesApp(),
    );
  }
}

class ShoesApp extends StatefulWidget{
  const ShoesApp({super.key});

  @override 
  State createState()=> _ShoesAppState();
}

class _ShoesAppState extends State{

  int currentIndex=0;

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text("Shoes"),
        actions: const[
          Icon(Icons.shopping_cart,
          color: Colors.deepPurple,)
        ],
      ),
      body: Column(
       
        children: [
          Image.network("https://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg"),

          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Nike Air Force 1 ''07 ",
          style: TextStyle(
            fontSize: 30,
            fontWeight:FontWeight.w500,
          ),
          ),
          Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              
              Container(
                
                padding:const  EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.deepPurple,
                ),
                child: const Text("SHOES",
                style: TextStyle(
                  color: Colors.white,
                ),
                ),
                
              ),
              const SizedBox(
                width: 15,
              ),
              Container(

                padding:const  EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.deepPurple,
                ),
                child: const Text("FOOTWEAR",
                style: TextStyle(
                  color: Colors.white,
                ),),
                
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text("On native (non-Web) platforms, object is converted to a string and that string is terminated by a line feed ('\n', U+000A) and written to stdout. On Windows, the terminating line feed, and any line feeds in the string representation of object, are output using the Windows line terminator sequence of ('\r\n', U+000D + U+000A)."),
           const SizedBox(
            height: 20,
          ),
           Row(
            children: [
             const Text("Quantity",
          style: TextStyle(
            fontSize: 20,
            fontWeight:FontWeight.w600,
          ),
          ),
          const SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: (){
              print("Substracted");
              if(currentIndex !=0){
                currentIndex--;
              }
              print("$currentIndex");
              setState(() {
                
              });
            },
            child: const Icon(Icons.remove),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            alignment: Alignment.center,
            height: 30,
            width: 30,
            
            decoration: BoxDecoration(
              border: Border.all(
                
              ),
            ),
            child: Text("$currentIndex",
            style: const TextStyle(
              fontSize: 20,
            ),),
          ),
          const SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: (){
              print("Added");
              
                currentIndex++;
              
              print("$currentIndex");
              setState(() {
                
              });
            },
            child: const Icon(Icons.add),
          ),


            ],
          ),
          const SizedBox(
            height: 60,
          ),
          GestureDetector(
            onTap:(){},
            child: Container(
              alignment: Alignment.center,
              margin:const  EdgeInsets.all(10),
              height: 60,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Text("PURCHASE",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),),
            ),

          ),
 
              ],
            ),
            )       ],
        
      ),
    );
  }
}
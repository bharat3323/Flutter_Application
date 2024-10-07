import 'package:flutter/material.dart';
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
        appBar:AppBar(
          title:const Text(
            "Netflix Demo",
            style:TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w500
            ),
            
          ),
          centerTitle:true,
          backgroundColor: const Color.fromARGB(255, 243, 33, 47),
        ),
        body:ListView.builder(
          itemCount: 3,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext contex,int index){
            return Column(
              children: [
                const Text(
                  "Action movies",
                  style:const TextStyle(
                    fontSize:30,
                    fontWeight:FontWeight.w400
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child:Row(
                    children:[
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network(
                          "https://images.justwatch.com/poster/313201926/s332/the-fall-guy"
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network(
                         "https://cdn.marvel.com/content/1x/guardiansofthegalaxyvolume3_lob_crd_03.jpg"
                          
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network(
                          "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00357490-rdvsxpgqnu-portrait.jpg"
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network(
                          "https://assetscdn1.paytm.com/images/cinema/172415-b1a70421-3e85-11ef-95aa-f7343890830b.jpg?format=webp&imwidth=300"
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgeSoaLLu4scuVCeWZqurJUEQVwHlDum2YlcI13SCJhGyKfAyXSqLFiRHMl9CIVq3Wc8s&usqp=CAU"
                        ),
                      ),
                    ]
                  )
                )

              ],

            );
          }
        
        ),
      ),
    );
  }
}

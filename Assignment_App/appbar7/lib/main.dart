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
          title:const  Text("Demo",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [
                Container(
                  height: 200,
                  width:250,
                  color:Colors.black,
                  child:  Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/Jagmeet_Singh_in_Brantford_2022_2_%28cropped3%29.jpg/640px-Jagmeet_Singh_in_Brantford_2022_2_%28cropped3%29.jpg",
                  fit: BoxFit.cover),
                ),
                Container(
                  height: 200,
                  width:250,
                  color:Colors.black,
                  child:  Image.network("https://www.trade.gov/sites/default/files/2022-10/Jasjit%20Singh.jpg",
                  fit: BoxFit.cover),
                ),
                Container(
                  height: 200,
                  width:250,
                  color:Colors.black,
                  child:  Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDjX6u3jiy0K5zcRSVhDBbS8JAmNA8xfWeZAgCq-Q53ale6rxegz6JHQajfV5In-s5rpE&usqp=CAU",
                  fit: BoxFit.cover),
                ),
                Container(
                  height: 200,
                  width:250,
                  color:Colors.black,
                  child:  Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmytsupjo-fDLO4DiALjqHnCRmKVMbY3SrRzp4SRyN37ECyBLkXyn1ZQPZ6qlF7fWFNzk&usqp=CAU",
                  fit: BoxFit.cover),
                ),
                Container(
                  height: 200,
                  width:250,
                  color:Colors.black,
                  child:  Image.network("https://akm-img-a-in.tosshub.com/indiatoday/images/story/202407/sarabjot-singh-301848251-16x9_0.jpeg?VersionId=7EQ_IebifYRaLKXWFaBnS8ElZ30vRw27&size=690:388",
                  fit: BoxFit.cover),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

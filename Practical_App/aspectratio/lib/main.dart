import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Aspect Ratio",
          style: TextStyle(
            fontSize:30,
            fontWeight:FontWeight.w500,
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: SizedBox(
            height: 300,
            width: 500,
            child: Image.network("https://as1.ftcdn.net/v2/jpg/05/40/08/54/1000_F_540085480_WN26Tz5VOFRwdPsLmK73JXNuSYsi2luw.jpg"),
          ),
          
        ),
      ),
    );
  }
}

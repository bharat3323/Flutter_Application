import 'package:flutter/material.dart';

void main() {
  runApp(const AppBarColor());
}

class AppBarColor extends StatefulWidget {
  const AppBarColor({super.key});
  @override
  State<AppBarColor> createState() => _AppBarColorState();
}

class _AppBarColorState extends State<AppBarColor> {
  bool isBackground = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("AppBar Color",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
            centerTitle: true,
            backgroundColor: (isBackground)
                ? const Color.fromARGB(255, 5, 114, 165)
                : Colors.pinkAccent,
          ),
          body: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("AppBar Colour Change",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              if (isBackground) {
                isBackground = false;
              } else {
                isBackground = true;
              }
              setState(() {});
            },
            child: const Icon(Icons.change_history),
          )),
    );
  }
}

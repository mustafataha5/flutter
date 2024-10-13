import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("Test"),
          centerTitle: true,
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
                buildkey(Colors.red,1),
                buildkey(Colors.blue,2),
                buildkey(Colors.orange,3),
                buildkey(Colors.greenAccent,4), 
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildkey(var color,int number) {
  return Expanded(
    child: TextButton(
      style:
          ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
      onPressed: () {
        print("clicked button $number");
      },
      child: Text(""),
    ),
  );
}

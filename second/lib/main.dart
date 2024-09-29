import 'package:flutter/material.dart';
import 'package:second/my_container.dart';

void main() {
  runApp(
     const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: GrandientContainer([ Color.fromARGB(183, 199, 19, 19), Color.fromARGB(255, 255, 200, 10)]),
      ),
    ),
  );
}



import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
          home: Scaffold(
            backgroundColor: Colors.blueAccent,
            appBar: AppBar(
              title: const Text("I Am Poor"),
              centerTitle: true,
              backgroundColor: Colors.blueGrey[400],
              foregroundColor: Colors.white,
            ),
            body: const Center(child: Image(image: AssetImage('images/coal.png')
             ),
            ),

          ),
  ));
}


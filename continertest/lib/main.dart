import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.yellow,
          appBar: AppBar(
            title: Text('Test'),
            backgroundColor: Colors.lightBlue,
            foregroundColor: Colors.white,
            centerTitle: true,
          ),
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: Text(
                  "Data 1",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: Text(
                  "Data 2",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                transform: Matrix4.rotationZ(.3),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: Text(
                  "Data 3",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
              ),
            ],
          )),
    );
  }
}

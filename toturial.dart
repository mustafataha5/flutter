import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello World Demo App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue, // Sets the AppBar color
        ),
      ),
      home: const MyHome("I am Mustafa Taha"),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome(this.title, {super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.red, Colors.yellow],
          ),
        ),
          child: const SingleChildScrollView(
        child:  Column(
          
          children: [
            Product("assets/images/quiz-logo.png","p1","desc1","10") , 
             Product("assets/images/quiz-logo.png","p1","desc1","11") , 
              Product("assets/images/quiz-logo.png","p1","desc1","12") , 
               Product("assets/images/quiz-logo.png","p1","desc1","13") , 
                Product("assets/images/quiz-logo.png","p1","desc1","14") , 
          ],
        ),
        ),
      ),
    );
  }
}


class Product extends StatelessWidget{
  const Product(this.img,this.pname, this.dec,this.price, {super.key});

  final String img  ; 
  final String pname ; 
  final String dec ; 
  final String price ; 

  @override
  Widget build(BuildContext context) {
    return Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(img, width: 128, height: 128),
              const SizedBox(width: 20), // Add spacing between image and text
               Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(pname),
                  Text(dec),
                  Text(price),
                ],
              ),
            ],
          ),
        );
  }
}

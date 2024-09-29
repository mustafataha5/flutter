import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
   MyText( this.text ,{super.key});

  String text ; 
 @override
  Widget build(context) {
    return  Text(
      text,
      style: const TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontSize: 28,
      ),
    );
  }
}

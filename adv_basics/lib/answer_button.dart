import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.answerText, required this.onTap});

  final String answerText;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      
      onPressed: onTap, 
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(250, 30),
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
       backgroundColor:const Color.fromRGBO(255, 64, 129, 1), 
        foregroundColor: Colors.white, 
        shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
        ),
        child:  Text(answerText),
        );
  }
}

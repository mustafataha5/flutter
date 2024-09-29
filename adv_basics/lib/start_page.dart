
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const  StartPage(this.quizFun,{super.key});

  final void Function() quizFun ; 

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Opacity(
              opacity: 1,
              child: Image.asset(
                "assets/images/quiz-logo.png",
                width: 256,
                height: 256,
                color: const Color.fromRGBO(209, 223, 20, 1),
                ),
                ),
            const SizedBox(
              height: 30,
              width: 20,
              
            ),
           const Text("Learn Flutter the fun way ?",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24, 
              ),
            ),
            const SizedBox(
              height: 30,
              width: 20,
            ),
            OutlinedButton.icon(
              icon: const Icon(Icons.arrow_right_alt,color: Colors.yellowAccent,),
              onPressed: quizFun, 
              label:   const Text("press"),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white60 ,
              )
            )

          ],
        ),
      );
  }
}

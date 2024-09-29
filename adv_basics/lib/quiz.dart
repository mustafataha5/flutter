import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/quiz_screen.dart';
import 'package:adv_basics/result_screen.dart';
import 'package:adv_basics/start_page.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen ;
  var activeScreen;
  List<String> answerSelected = [];

  @override
  void initState() {
    activeScreen = 'start-screen';
    //    activeScreen = 'start' ; StartPage(switchScreen) ;
    super.initState();
  }

  void switchScreen() {
    setState(() {
      //activeScreen = const QuizScreen();
      activeScreen = 'quiz-screen';
    });
  }

  void chooseAnswer(String answer) {
    answerSelected.add(answer);
    // print(answerSelected);
    //print(answerSelected.length == questions.length);
    if (answerSelected.length == questions.length) {
      setState(() {
        
        activeScreen = 'result-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      activeScreen = 'quiz-screen';
      answerSelected = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartPage(switchScreen);

    if (activeScreen == 'quiz-screen') {
      screenWidget = QuizScreen(
        onSelectAnswer: chooseAnswer,
      );
    }
    if (activeScreen == 'result-screen') {
      screenWidget =  ResultScreen(chooesenAnswer: answerSelected, onRestart: restartQuiz) ; 
    }

    return MaterialApp(
      title: "Quiz",
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient:
                  LinearGradient(colors: [Colors.purple, Colors.purpleAccent])),
          child: screenWidget,
        ),
      ),
    );
  }
}

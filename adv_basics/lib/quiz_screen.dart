import 'package:adv_basics/answer_button.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/models/quiz_question.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;
  @override
  State<QuizScreen> createState() {
    return _QuizScreenState();
  }
}

class _QuizScreenState extends State<QuizScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String answer) {
    widget.onSelectAnswer(answer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final QuizQuestion currentQuestion = questions[currentQuestionIndex];
    return Container(
      margin: const EdgeInsets.all(100),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currentQuestion.text,
            style: GoogleFonts.lato(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            width: 10,
            height: 20,
          ),
          ...currentQuestion.shuffleList().map((e) {
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 3),
              
              child: AnswerButton(
                  answerText: e.toString(),
                  onTap: () {
                    answerQuestion(e.toString());
                  }),
            );
          }),
        ],
      )),
    );
  }
}

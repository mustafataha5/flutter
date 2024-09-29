import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/question_summary.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.chooesenAnswer, required this.onRestart});

  final List<String> chooesenAnswer;
  final void Function() onRestart;

  List<Map<String, Object>> getSummary() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chooesenAnswer.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chooesenAnswer[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummary();
    final totalquestions = questions.length;
    final totalcorrectAnswers = summaryData.where((data) {
      return data['correct_answer'] == data['user_answer'];
    }).length;
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "You answer $totalcorrectAnswers from $totalquestions questions correctly",
          style: GoogleFonts.lato(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 30,
        ),
        QuestionSummary(answerSummary: summaryData),
        const SizedBox(
          height: 30,
        ),
        TextButton.icon(
          icon: const Icon(Icons.restart_alt),
          onPressed: onRestart,
          label: const Text("Restart"),
          style: TextButton.styleFrom(foregroundColor: Colors.white,
          iconColor: Colors.white),
        )
      ],
    ));
  }
}

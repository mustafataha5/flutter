import 'package:adv_basics/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.answerSummary});

  final List<Map<String, Object>> answerSummary;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 300,
      child: SingleChildScrollView(
        child: Column(
          children: answerSummary.map((data) {
            var inedxBg; 
            if (data['correct_answer'] != data['user_answer']) {
            
                  inedxBg =  Colors.redAccent ;
            } else {
                   inedxBg =  Colors.greenAccent ;
            }
            return Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(top:1,bottom: 1, right: 7 ,left: 7), // Padding inside the border
                  margin: const EdgeInsets.only(
                      top: 15, right: 10), // Margin outside the border
                  decoration: BoxDecoration(
                    color: inedxBg, // Background color
                    borderRadius: BorderRadius.circular(25), // Rounded border
                    border: Border.all(
                      color: inedxBg, // Border color
                      width: 1, // Border width
                    ),
                  ),
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),
                    style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 12),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                          style: GoogleFonts.lato(
                              color: Colors.white, fontSize: 13),
                          data['question'] as String),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                          style: GoogleFonts.lato(
                              color: const Color.fromARGB(255, 220, 149, 233),
                              fontSize: 10),
                          " ${data['user_answer'] as String}"),
                      Text(
                          style: GoogleFonts.lato(
                              color: const Color.fromARGB(255, 192, 233, 78),
                              fontSize: 10),
                          "${data['correct_answer'] as String}"),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}

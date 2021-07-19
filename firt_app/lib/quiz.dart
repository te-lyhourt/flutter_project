import 'package:flutter/material.dart';
import './qestion.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;
  Quiz(
      {required this.questions,
      required this.answerQuestion,
      required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          //question text
          Qestion(questions[questionIndex]['questionText'] as String),
          //answer text
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
              .map((answer) {
            var score = answer['score'];
            return Answer(
                () => answerQuestion(score), answer["text"] as String);
          }).toList()
        ],
      ),
    );
  }
}

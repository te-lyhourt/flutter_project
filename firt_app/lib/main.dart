import 'package:flutter/material.dart';

import './quiz.dart';
import 'result.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppStat();
  }
}

class _MyAppStat extends State<Myapp> {
  //property
  var _questionIndex = 0;
  var _totalScore = 0;
  void _restQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  //function
  void _answerQuestion(int score) {
    _totalScore += score;
    print(_totalScore);
    setState(() {
      _questionIndex++;
    });
  }

  //widget
  @override
  Widget build(BuildContext context) {
    const _questions = [
      {
        "questionText": "what is ur name",
        "answers": [
          {"text": "lyhourt", "score": 10},
          {"text": "bora", "score": 15},
          {"text": "dara", "score": 7},
        ]
      },
      {
        "questionText": "what is ur age",
        "answers": [
          {"text": "18", "score": 10},
          {"text": "19", "score": 5},
          {"text": "20", "score": 1},
        ]
      },
      {
        "questionText": "what is ur favorit color",
        "answers": [
          {"text": "red", "score": 20},
          {"text": "blue", "score": 100},
          {"text": "green", "score": -1},
          {"text": "yellow", "score": 15},
        ]
      },
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App!'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex)
              : Result(_totalScore, _restQuiz)),
    );
  }
}

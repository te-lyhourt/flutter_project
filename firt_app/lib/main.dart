import 'package:flutter/material.dart';
import './qestion.dart';
import './answer.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppStat();
  }
}

class _MyAppStat extends State<Myapp> {
  //property
  var _questionIndex = 0;
  //function
  void _answer() {
    setState(() {
      _questionIndex++;
    });

    print(_questionIndex);
  }

  //widget
  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        "questionText": "what is ur name",
        "answers": ["lyhourt", "bora", "dara"]
      },
      {
        "questionText": "what is ur age",
        "answers": ["18", "19", "20"]
      },
      {
        "questionText": "what is ur favorit color",
        "answers": ["red", "blue", "green", "yellow"]
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App!'),
        ),
        body: Column(
          children: [
            //question text
            Qestion(questions[_questionIndex]['questionText'] as String),
            //answer text
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answer, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}

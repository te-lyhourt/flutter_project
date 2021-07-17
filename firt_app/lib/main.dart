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
    var question = [
      "what is ur name",
      "what is ur age",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App!'),
        ),
        body: Column(
          children: [
            Qestion(question[_questionIndex % 2]),
            Answer(_answer),
            Answer(_answer),
            Answer(_answer),
          ],
        ),
      ),
    );
  }
}

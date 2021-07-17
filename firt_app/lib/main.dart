import 'package:flutter/material.dart';
import './qestion.dart';

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
  void answer() {
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
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answer,
            ),
            RaisedButton(
              onPressed: answer,
              child: Text("Answer 2"),
            ),
            RaisedButton(
              onPressed: answer,
              child: Text("Answer 3"),
            ),
          ],
        ),
      ),
    );
  }
}

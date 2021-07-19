import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    String resultText;
    if (resultScore > 100) {
      resultText = "you really good";
    }
    if (resultScore > 40) {
      resultText = "you are not bad";
    } else {
      resultText = "you really bad";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text(
              resultPhrase,
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
                onPressed: resetHandler, child: Text("restart quiz")),
          ],
        ),
      ),
    );
  }
}

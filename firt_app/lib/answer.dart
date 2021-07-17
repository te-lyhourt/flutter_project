import 'dart:ui';

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  Answer(this.selectHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        color: Colors.blue,
        onPressed: selectHandler,
        child: Text('Answer 1'),
      ),
    );
  }
}

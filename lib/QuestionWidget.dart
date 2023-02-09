import 'package:flutter/material.dart';

class QuestionClass extends StatelessWidget {
  final String questionText;
  QuestionClass({this.questionText});

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}

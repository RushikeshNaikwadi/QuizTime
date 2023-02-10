import 'package:flutter/material.dart';

class QuestionClass extends StatelessWidget {
  final String questionText;
  QuestionClass({this.questionText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: Text(
          questionText,
          style: TextStyle(
            fontSize: 23,
          ),
          textAlign: TextAlign.left,
      ),
    );
  }
}

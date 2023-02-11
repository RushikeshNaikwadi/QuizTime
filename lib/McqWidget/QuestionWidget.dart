import 'package:flutter/material.dart';

class QuestionClass extends StatelessWidget {
  final String questionText;

  QuestionClass({
    this.questionText
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(10, 15, 10, 10),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
          questionText,
          style: TextStyle(
            fontSize: 25,
          ),
          textAlign: TextAlign.left,
      ),
    );
  }
}

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
      margin: EdgeInsets.fromLTRB(7.5, 15, 7.5, 10),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.redAccent,
        borderRadius: BorderRadius.circular(10),
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

import 'package:flutter/material.dart';

class ResultPageClass extends StatelessWidget {
  final int score;
  final int totalScore;
  final Function resetQuiz;

  ResultPageClass({
    @required this.score,
    @required this.totalScore,
    @required this.resetQuiz
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      body: Container(
        width: double.infinity,
        child: Center(
          child: Text(
            'Result : ${score.toString()} / $totalScore',
            style: TextStyle(
                fontSize: 30
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: resetQuiz,
        label: Text('Reset'),
        backgroundColor: Colors.grey[800],
      ),
    );
  }
}
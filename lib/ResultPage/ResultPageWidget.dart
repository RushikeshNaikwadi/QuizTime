import 'package:flutter/material.dart';

class ResultPageClass extends StatelessWidget {
  final double score;
  final double totalScore;
  final Function resetQuiz;

  ResultPageClass({
    @required this.score,
    @required this.totalScore,
    @required this.resetQuiz
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: Container(
        width: double.infinity,
        child: Center(
          child: Text(
            'Result  :  ${score.toString()} / $totalScore',
            style: TextStyle(
                fontSize: 30,
              color: Colors.limeAccent
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: resetQuiz,
        label: Text(
            'Reset',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.limeAccent,
          ),
        ),
        backgroundColor: Colors.grey[900],
      ),
    );
  }
}

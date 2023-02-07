import 'package:flutter/material.dart';

void main () {
  runApp(QuizTime());
}

class QuizTime extends StatelessWidget {
  Widget build (BuildContext context) {
      return MaterialApp(
        home: SafeArea(
            child: Text('QuizTime')
        ),
      );
  }
}
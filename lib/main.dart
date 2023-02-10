import 'package:flutter/material.dart';

import 'McqList/mcqListData.dart';
import 'package:quiz_time/McqWidget/McqPageWidget.dart';
import 'ResultPage/ResultPageWidget.dart';

void main () => runApp(QuizTime());

class QuizTime extends StatefulWidget {
  @override
  State<QuizTime> createState() => _QuizTimeState();
}

class _QuizTimeState extends State<QuizTime> {
  bool _isQuizDone = false;
  int _score = 0;
  
  int _mcqIndex = 0;

  void optionSelected (int score) {
    setState(() {
      _mcqIndex++;
      _score += score;
      print(_score);
      if (_mcqIndex >= mcqData.length) {
        _isQuizDone = true;
      }
    });
  }

  void quizResettter () {
    setState(() {
      _isQuizDone = false;
      _mcqIndex = 0;
      _score = 0;
    });
  }

  Widget build (BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('QuizTime'),
          ),
          body: _isQuizDone ?
          ResultPageClass(
            score: _score,
            totalScore: mcqData.length,
            resetQuiz: quizResettter,
          ) :
          MCQPageClass(
            questionText: mcqData[_mcqIndex].questionText,
            optionList: mcqData[_mcqIndex].optionsList,
            optionSelector: optionSelected,
          ),
        )
      );
  }
}
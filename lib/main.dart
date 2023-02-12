import 'package:flutter/material.dart';
import 'package:quiz_time/Introduction/IntroPageWidget.dart';

import 'Data/mcqListData.dart';
import 'package:quiz_time/McqWidget/McqPageWidget.dart';
import 'ResultPage/ResultPageWidget.dart';

void main () => runApp(QuizTime());

enum Location {
  IntroPage,
  QuizStart,
  QuizDone
}

class QuizTime extends StatefulWidget {
  @override
  State<QuizTime> createState() => _QuizTimeState();
}

class _QuizTimeState extends State<QuizTime> {
  Location current = Location.IntroPage;

  double _score = 0.0, _totalScore = 0.0;
  int _mcqIndex = 0;

  void startQuiz () {
    setState(() {
      current = Location.QuizStart;
    });
  }

  void optionSelected (double score) {
    setState(() {
      _mcqIndex++;
      _score += score;
      _totalScore += 1.0;
      print(_score);
      if (_mcqIndex >= mcqData.length) {
        current = Location.QuizDone;
      }
    });
  }

  void quizReset () {
    setState(() {
      _mcqIndex = 0;
      _score = 0;
      _totalScore = 0;
      current = Location.IntroPage;
    });
  }

  Widget build (BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text(
                'QuizTime',
              style: TextStyle(
                color: Colors.limeAccent
              ),
            ),
            backgroundColor: Colors.grey[800],
          ),
          body: current == Location.IntroPage ?
              IntroPageClass(
                quizStarter: startQuiz,
              ) :
              (current == Location.QuizStart ?
                  MCQPageClass(
                    questionText: mcqData[_mcqIndex].questionText,
                    optionList: mcqData[_mcqIndex].optionsList,
                    optionSelector: optionSelected,
                  ) :
                  ResultPageClass(
                    score: _score,
                    totalScore: _totalScore,
                    resetQuiz: quizReset,
                  )
              )
        )
      );
  }
}
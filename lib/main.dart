import 'package:flutter/material.dart';

import './QuestionWidget.dart';
import './OptionWidget.dart';
import './DataClass.dart';

void main () {
  runApp(QuizTime());
}

class QuizTime extends StatefulWidget {
  @override
  State<QuizTime> createState() => _QuizTimeState();
}

class _QuizTimeState extends State<QuizTime> {
  int _mcqIndex = 0;

  List <DataClass> mcqData = [
    DataClass(
      questionText: 'Which of the following is the smallest unit of data in a computer?',
      optionsList: ['Bit', 'KB', 'Nibble', 'Byte']
    ),
    DataClass(
      questionText: 'What is information about data called?',
      optionsList: ['Hyper data', 'Tera data', 'Meta data', 'Relations']
    ),
    DataClass(
      questionText: 'Which command is used to remove a relation from an SQL?',
      optionsList: ['Truncate' ,'Drop table', 'Delete', 'Remove']
    )
  ];

  void optionSelected () {
    setState(() {
      _mcqIndex++;
      _mcqIndex %= mcqData.length;
    });
  }

  Widget build (BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('QuizTime'),
          ),
          body: Column(
            children: [
              QuestionClass(
                  questionText: mcqData[_mcqIndex].questionText
              ),
              ...mcqData[_mcqIndex].optionsList.map((optionText) {
                return OptionClass(
                  optionText: optionText,
                  optionSelector: optionSelected,
                );
              }).toList()
            ],
          )
        )
      );
  }
}
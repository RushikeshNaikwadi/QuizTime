import 'package:flutter/material.dart';

void main () {
  runApp(QuizTime());
}

class QuizTime extends StatefulWidget {
  @override
  State<QuizTime> createState() => _QuizTimeState();
}

class _QuizTimeState extends State<QuizTime> {
  int mcqIndex = 0;

  List<String> mcqList = [
    "What is National Animal of India ?",
    "What is National Bird of India ?",
  ];

  void optionSelected () {
    setState(() {
      mcqIndex++;
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
              Text(mcqList[mcqIndex]),
              ElevatedButton(
                  onPressed: optionSelected,
                  child: Text('Option 1'),
              ),
              ElevatedButton(
                onPressed: optionSelected,
                child: Text('Option 2'),
              ),
              ElevatedButton(
                onPressed: optionSelected,
                child: Text('Option 3'),
              ),
              ElevatedButton(
                onPressed: optionSelected,
                child: Text('Option 4'),
              ),
            ],
          )
        )
      );
  }
}
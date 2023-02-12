import 'package:flutter/material.dart';

class IntroPageClass extends StatelessWidget {
  final Function quizStarter;

  IntroPageClass({
    this.quizStarter
  });

  final List<String> rules = [
    '1) Quiz is based on CS Fundamentals which include DSA, OS, DBMS, CNS and OOP.',
    '',
    '2) The Quiz contains 10 question, Each correct answer has 1 mark and for each incorrect answer 0.5 mark will be deducted.',
    '',
    '3) You can attempt Quiz infinite amount of times.',
    '',
    '4) You can Start Quiz by clicking on Start Quiz.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 15),
        color: Colors.grey[800],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
                'Rules',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Colors.limeAccent,
                letterSpacing: 2.5
              ),
            ),
            Text(''),
            ...rules.map((rule) {
              return Text(
                  rule,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.purpleAccent[100]

                ),
              );
            }),
            Text('\n'),
            Text(
              'BEST of LUCK',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.limeAccent
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: quizStarter,
          label: Text(
              'Start Quiz',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.limeAccent,
              ),
          ),
          backgroundColor: Colors.grey[900]
      ),
    );
  }
}

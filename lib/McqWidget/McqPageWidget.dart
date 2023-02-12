import 'package:flutter/material.dart';

import 'QuestionWidget.dart';
import 'OptionWidget.dart';

class MCQPageClass extends StatelessWidget {
  final String questionText;
  final List<List<dynamic>> optionList;
  final Function optionSelector;

  MCQPageClass({
    @required this.questionText,
    @required this.optionList,
    @required this.optionSelector
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 15),
        color: Colors.grey[700],
        child: Column(
          children: [
            QuestionClass(
                questionText: questionText
            ),
            Text(''),
            ...optionList.map((optionTextPlusScore) {
              return OptionClass(
                index: optionList.indexOf(optionTextPlusScore) + 1,
                optionTextPlusScore: optionTextPlusScore,
                optionSelector: optionSelector,
              );
            }).toList()
          ],
        )
    );
  }
}

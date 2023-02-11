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
    return Column(
      children: [
        QuestionClass(
            questionText: questionText
        ),
        ...optionList.map((optionTextPlusScore) {
          return OptionClass(
            index: optionList.indexOf(optionTextPlusScore) + 1,
            optionTextPlusScore: optionTextPlusScore,
            optionSelector: optionSelector,
          );
        }).toList()
      ],
    );
  }
}

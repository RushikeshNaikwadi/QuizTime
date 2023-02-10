import 'package:flutter/material.dart';

class OptionClass extends StatelessWidget {
  final Function optionSelector;
  final List<dynamic> optionTextPlusScore;
  OptionClass({@required this.optionSelector, @required this.optionTextPlusScore});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () => optionSelector(optionTextPlusScore[1]),
        child: Text(optionTextPlusScore[0]),
      ),
    );
  }
}

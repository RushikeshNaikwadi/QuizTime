import 'package:flutter/material.dart';

class OptionClass extends StatelessWidget {
  final Function optionSelector;
  final String optionText;
  OptionClass({@required this.optionSelector, @required this.optionText});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: optionSelector,
        child: Text(optionText),
      ),
    );
  }
}

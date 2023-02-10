import 'package:flutter/material.dart';

class OptionClass extends StatelessWidget {
  final Function optionSelector;
  final List<dynamic> optionTextPlusScore;
  OptionClass({@required this.optionSelector, @required this.optionTextPlusScore});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ElevatedButton(
        onPressed: () => optionSelector(optionTextPlusScore[1]),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.green[400]),
        ),
        child: Text(
            optionTextPlusScore[0],
          style: TextStyle(

          ),
        ),
      ),
    );
  }
}

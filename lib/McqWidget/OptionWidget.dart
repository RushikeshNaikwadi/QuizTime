import 'package:flutter/material.dart';

class OptionClass extends StatelessWidget {
  final Function optionSelector;
  final int index;
  final List<dynamic> optionTextPlusScore;

  OptionClass({
    @required this.optionSelector,
    @required this.index,
    @required this.optionTextPlusScore
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 1, horizontal: 10),
      padding: EdgeInsets.symmetric(vertical: 1, horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ElevatedButton(
        onPressed: () => optionSelector(optionTextPlusScore[1]),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.green[500]),
        ),
        child: Text(
            '${optionTextPlusScore[0]}',
          style: TextStyle(
            fontSize: 20
          ),
        ),
      ),
    );
  }
}

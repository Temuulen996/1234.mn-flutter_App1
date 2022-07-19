import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function changeSet;
  final String answerTxt;
  Answer(this.changeSet, this.answerTxt);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(3),
        child: RaisedButton(
          textColor: Colors.white,
          onPressed: () => changeSet(),
          child: Text(answerTxt),
          color: Colors.orange[500],
        ));
  }
}

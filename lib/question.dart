import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import "package:flutter/material.dart";

class Question extends StatelessWidget {
  var QuestionText;

  Question(this.QuestionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
        QuestionText,
        style: TextStyle(fontSize: 43),
        textAlign: TextAlign.center,
      ),
    );
  }
}

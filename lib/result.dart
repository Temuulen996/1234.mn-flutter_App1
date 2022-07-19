import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import "package:flutter/material.dart";

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;
  String get resultPhrase {
    String resultText;
    if (totalScore <= 8) {
      resultText = "Гайхалтай";
    } else if (totalScore <= 12) {
      resultText = "Сайн";
    } else if (totalScore <= 16) {
      resultText = "Дунд";
    } else {
      resultText = "Маш муу";
    }
    return resultText;
  }

  Result({required this.totalScore, required this.resetQuiz});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "Таны оноо ${totalScore} байна.(${resultPhrase})",
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            onPressed: () => resetQuiz(),
            child: Text("Reset хийх."),
          )
        ],
      ),
    );
  }
}

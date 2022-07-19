import "./answer.dart";
import "package:flutter/material.dart";
import "./question.dart";
import "./quiz.dart";
import "./result.dart";

void main() => runApp(MyApp());
var questions = [
  {
    "questionTxt": "what is your fav color?",
    "answers": [
      {"text": "black", "score": 3},
      {"text": "white", "score": 4},
      {"text": "grey", "score": 2},
      {"text": "green", "score": 4},
      {"text": "pink", "score": 6}
    ]
  },
  {
    "questionTxt": "what is your fav animal?",
    "answers": [
      {"text": "dog", "score": 3},
      {"text": "cat", "score": 4},
      {"text": "bird", "score": 2},
      {"text": "fish", "score": 4},
      {"text": "rabbit", "score": 6}
    ]
  },
  {
    "questionTxt": "what is your fav food?",
    "answers": [
      {"text": "plow", "score": 3},
      {"text": "pizza", "score": 4},
      {"text": "sushi", "score": 2},
      {"text": "ramen", "score": 4},
      {"text": "sphagheti", "score": 6}
    ]
  },
];

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var totalScore = 0;
  void resetQuiz() {
    setState(() {
      totalScore = 0;
      _questionIndex = 0;
    });
  }

  void _questionAnswer(int score) {
    totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("my first flutter app"),
      ),
      body: _questionIndex < questions.length
          ? Quiz(
              questions: questions,
              questionAnswer: _questionAnswer,
              questionIndex: _questionIndex)
          : Result(
              totalScore: totalScore,
              resetQuiz: resetQuiz,
            ),
    ));
  }
}

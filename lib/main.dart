import 'package:flutter/material.dart';
import 'quiz.dart';
import './result.dart';

void main() {
  runApp(_MyApp());
}

class _MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<_MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      {
        "textQuestion": 'What\'s Your Favourite Color ?',
        "answers": [
          {"text": 'Black', "score": 10},
          {"text": 'Blue', "score": 4},
          {"text": 'Red', "score": 1},
          {"text": 'Green', "score": 1}
        ],
      },
      {
        "textQuestion": 'What\'s Your Favourite Animal ?',
        "answers": [
          {"text": 'Rabbit', "score": 2},
          {"text": 'Lion', "score": 2},
          {"text": 'Snake', "score": 2},
          {"text": 'Elephant', "score": 2}
        ],
      },
      {
        "textQuestion": 'Who\'s Your Favourite Instructor ?',
        "answers": [
          {'text': 'Max', 'score': 1},
          {'text': 'Max', 'score': 1},
          {'text': 'Max', 'score': 1},
          {'text': 'Max', 'score': 1},
        ],
      },
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("My first App"),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
              questions: _questions,
            )
          : Result(_totalScore, _resetQuiz),
    ));
  }
}

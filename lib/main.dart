import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What is your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Blue', 'score': 20},
        {'text': 'Red', 'score': 15},
        {'text': 'Orange', 'score': 25}
      ],
    },
    {
      'questionText': 'What is your favorite animal?',
      'answers': [
        {'text': 'Rabit', 'score': 10},
        {'text': 'Elephant', 'score': 20},
        {'text': 'Tiger', 'score': 30},
        {'text': 'Lion', 'score': 40}
      ],
    },
    {
      'questionText': 'What is your favorite Food?',
      'answers': [
        {'text': 'Icecream', 'score': 10},
        {'text': 'Chocalate', 'score': 20},
        {'text': 'Panipuri', 'score': 30},
        {'text': 'Dosa', 'score': 40}
      ],
    },
  ];
  var _queIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _queIndex = 0;
      _totalScore = 0;
    });
  }

  void _ansQuestion(int score) {
    _totalScore += score;
    setState(() {
      _queIndex = _queIndex + 1;
    });
    print(_queIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _queIndex < _questions.length
            ? Quiz(
                ansQuestion: _ansQuestion,
                queIndex: _queIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}

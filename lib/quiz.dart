import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int queIndex;
  final Function ansQuestion;

  Quiz({
    @required this.questions,
    @required this.ansQuestion,
    @required this.queIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[queIndex]['questionText'],
        ),
        ...(questions[queIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => ansQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}

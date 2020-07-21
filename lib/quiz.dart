import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int quesindex;
  final Function answerques;

  Quiz(
      {@required this.questions,
      @required this.answerques,
      @required this.quesindex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questions[quesindex]['question'],
        ),
        ...(questions[quesindex]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerques(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}

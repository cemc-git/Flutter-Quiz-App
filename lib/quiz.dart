import 'package:flutter/material.dart';
import 'Quest.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  var questions;
  var aux;
  Function answerQ;
  Quiz(this.questions, this.aux, this.answerQ);
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Quest(questions[aux]['question']),
      ...(questions[aux]['answers'] as List<Map<String, Object>>).map((answer) {
        return Answer(answer['text'], () => answerQ(answer['value']));
      }).toList()
    ]);
  }
}

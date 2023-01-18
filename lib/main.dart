import 'package:first_app/result.dart';
import 'package:first_app/answer.dart';
import 'package:flutter/material.dart';
import 'Quest.dart';
import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int aux = 0;
  int scoreTotal = 0;
  void answerQ(int score) {
    scoreTotal = score + scoreTotal;
    print('Answer!');
    setState(() {
      aux++;
    });
  }

  void updateValues() {
    setState(() {
      aux = 0;
      print(aux);
      scoreTotal = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'question': 'Quem disse esta frase: "As vezes no silêncio da noite"',
        'answers': [
          {'text': 'Roberto Carlos', 'value': 0},
          {'text': 'Jorge Ben Jor', 'value': 0},
          {'text': 'Caetano Veloso', 'value': 1},
        ],
      },
      {
        'question': 'Quem disse esta frase: "Sidoka na levada venenosa"',
        'answers': [
          {'text': 'Matuê', 'value': 0},
          {'text': 'Sidoka', 'value': 1},
          {'text': 'Teto', 'value': 0},
        ],
      },
      {
        'question':
            'Quanto tempo dura para uma vela de 7 dias se apagar por completo?',
        'answers': [
          {'text': '7 dias', 'value': 1},
          {'text': '2 dias e meio', 'value': 0},
          {'text': 'Depende do vento', 'value': 0},
          {'text': 'Fred desimpedidos', 'value': 10}
        ],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Quest('Aplicativo legal'),
          backgroundColor: Colors.amber,
        ),
        body: questions.length > aux
            ? Quiz(questions, aux, answerQ)
            : Result(scoreTotal, updateValues),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(const PokemonQuizApp());

class PokemonQuizApp extends StatefulWidget {
  const PokemonQuizApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _PokemonQuizAppState();
  }
}

class _PokemonQuizAppState extends State<PokemonQuizApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _questions = [
      {
        "questionText": "What is the type of pikachu?",
        "answers": [
          {"text": "Steel", "score": 0},
          {"text": "Fairy", "score": 0},
          {"text": "Electric", "score": 1},
          {"text": "Normal", "score": 0},
        ]
      },
      {
        "questionText": "What is the type of charizard?",
        "answers": [
          {"text": "Fire", "score": 1},
          {"text": "Steel", "score": 0},
          {"text": "Dragon", "score": 0},
          {"text": "Ground", "score": 0},
        ]
      },
      {
        "questionText": "What is the type of Blastoise?",
        "answers": [
          {"text": "Ground", "score": 0},
          {"text": "Dark", "score": 0},
          {"text": "Ice", "score": 0},
          {"text": "Water", "score": 1},
        ]
      },
      {
        "questionText": "What is the type of Venasaur?",
        "answers": [
          {"text": "Grass", "score": 1},
          {"text": "Ground", "score": 0},
          {"text": "Rock", "score": 0},
          {"text": "Normal", "score": 0},
        ]
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Pokemon Quiz App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion)
            : Result(totalScore: _totalScore, resetQuiz: _resetQuiz),
      ),
    );
  }
}

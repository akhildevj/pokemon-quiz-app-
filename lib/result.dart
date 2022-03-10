import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int? totalScore;
  final VoidCallback? resetQuiz;

  const Result({Key? key, this.totalScore, this.resetQuiz}) : super(key: key);

  String get resultText {
    return "Your Score is " + totalScore.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultText,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          TextButton(onPressed: resetQuiz, child: const Text("Reset Quiz"))
        ],
      ),
    );
  }
}

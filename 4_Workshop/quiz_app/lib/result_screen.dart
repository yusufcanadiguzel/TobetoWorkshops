import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/data_access/quiz_manager.dart';

import 'models/result.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}


class _ResultScreenState extends State<ResultScreen> {

  QuizManager quizManager = QuizManager();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              ...quizManager.getResults().map((result) => Text('Soru ${result.questionNumber} ${result.correctAnswer}'))
            ],
          ),
        ),
      ),
    );
  }
}

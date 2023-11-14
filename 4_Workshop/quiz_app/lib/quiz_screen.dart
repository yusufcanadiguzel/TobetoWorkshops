import 'package:flutter/material.dart';
import 'package:quiz_app/result_screen.dart';

import 'data_access/quiz_manager.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  QuizManager quizManager = QuizManager();

  ElevatedButton createAnswers(String data){
    return ElevatedButton(onPressed: (){
      setState(() {
        quizManager.checkAnswer(data);

        if(!quizManager.nextQuestion()){
          goResults();
        }
      });
    }, child: Text(data, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)), style: ElevatedButton.styleFrom(backgroundColor: Colors.white));
  }

  void goResults(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => ResultScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      body: SafeArea(
        child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Soru ${quizManager.getCurrentQuestionNumber()}', style: TextStyle(fontSize: 20.0 ,fontWeight: FontWeight.bold, color: Colors.grey)),
            Text(quizManager.getQuestion(), style: TextStyle(color: Colors.white)),
            ...quizManager.getAnswers().map((answer) => createAnswers(answer))
          ],
        ),
      ),),
    );
  }
}
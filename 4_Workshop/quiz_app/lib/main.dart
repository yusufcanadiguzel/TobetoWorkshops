import 'data/question_bank.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(home: StartScreen()));
}

QuestionBank questionBank = QuestionBank();

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      body: const QuizScreen()
    );
  }
}

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int counter = 0;

  ElevatedButton createAnswers(String data){
    return ElevatedButton(onPressed: (){
      setState(() {
        if(counter <= 3)
          counter++;
        else
          counter = 0;
      });
    }, child: Text(data, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)), style: ElevatedButton.styleFrom(backgroundColor: Colors.white));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Soru', style: TextStyle(fontSize: 20.0 ,fontWeight: FontWeight.bold, color: Colors.grey)),
          Text(questionBank.questions[counter].question, style: TextStyle(color: Colors.white)),
          createAnswers(questionBank.questions[counter].answers[0]),
          createAnswers(questionBank.questions[counter].answers[1]),
          createAnswers(questionBank.questions[counter].answers[2]),
          createAnswers(questionBank.questions[counter].answers[3])
        ],
      ),
    ),);
  }
}

int nextQuestion(int counter){
  return counter++;
}
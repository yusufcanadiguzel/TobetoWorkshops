import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey.shade900,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/quiz-logo.png', height: 200.0,),
                SizedBox(height: 30.0),
                Text('Quiz App', style: TextStyle(fontSize: 30.0, color: Colors.white, fontWeight: FontWeight.bold)),
                ElevatedButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => QuizScreen())); }, child: Text('Başla',
                    style: TextStyle(color: Colors.blueGrey.shade900, fontSize: 15.0)),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.white),)
              ],
            ),
          ),
        ),
    );
  }
}
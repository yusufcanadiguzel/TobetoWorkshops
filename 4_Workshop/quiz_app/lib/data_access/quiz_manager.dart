import 'package:quiz_app/data/question_bank.dart';
import 'package:quiz_app/models/result.dart';

class QuizManager{
  QuestionBank questionBank = QuestionBank();
  List<Result> results = [];

  int currentQuestion = 0;

  String getQuestion(){
    var result = questionBank.questions[currentQuestion].question;

    return result;
  }

  List<String> getAnswers(){
    var result = questionBank.questions[currentQuestion].answers;

    return result;
  }

  bool nextQuestion(){
    if(currentQuestion < questionBank.questions.length - 1){
      currentQuestion++;
      return true;
    }else
      return false;

  }

  void checkAnswer(String answer){
    if(questionBank.questions[currentQuestion].correctAnswer == answer){
      results.add(Result(currentQuestion, true));
      print(results[currentQuestion].correctAnswer);
    }else{
      results.add(Result(currentQuestion, false));
      print(Result(currentQuestion, false));
    }
  }

  int getCurrentQuestionNumber(){
    return currentQuestion + 1;
  }

  List<Result> getResults(){
    return results;
  }
}
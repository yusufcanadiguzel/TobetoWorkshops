import 'package:quiz_app/models/quiz_question.dart';

class QuestionBank{
    List<QuizQuestion> questions = [
      QuizQuestion("Alfabenin ilk harfi hangisidir?", ["A", "Y", "Z", "K"]),
      QuizQuestion("Alfabenin sekizinci harfi hangisidir?", ["M", "P", "G", "Ğ"]),
      QuizQuestion("2+2 = ?", ["8", "4", "3", "0"]),
      QuizQuestion("Kulakları en büyük olan hayvan hangisidir?", ["Fil", "Zürafa", "Tavşan", "Yarasa"])
    ];
}
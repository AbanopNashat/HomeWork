import 'package:quizz_app/models/question_model.dart';

class QuestionManager {
  QuestionManager({required this.questions});

  final List<QuestionModel> questions;

  updateQuestion(QuestionModel question) {
    question.selectedAnswer;
    var itemIndex = questions.indexOf(question);
    questions.remove(question);
    questions.insert(itemIndex, question);
  }
}

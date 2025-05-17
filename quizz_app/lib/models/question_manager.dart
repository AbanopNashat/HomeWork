import 'package:quizz_app/models/question_model.dart';

class QuestionManager {
  final List<QuestionModel> questions;

  QuestionManager({required this.questions});

  updateQuestion(QuestionModel question) {
    questions.add(question);
    questions.remove(question);
  }
}

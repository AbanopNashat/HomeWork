import 'package:equatable/equatable.dart';
import 'package:quizz_app/constants/assets.dart';

class QuestionModel extends Equatable {
  final String question;
  final List<String> selections;
  final String questionImg;
  final String correctAnswer;
  String? selectedAnswer;

  QuestionModel( {
    required this.correctAnswer,
    required this.question,
    required this.selections,
    required this.questionImg,
  });


  @override
  // TODO: implement props
  List<Object?> get props => [question, selections , correctAnswer , questionImg];
}

List<QuestionModel> questions = [
  QuestionModel(
    question:
        "How would you describe your level of satisfaction with the healthcare system?",
    selections: ["Strongly satisfied", "Satisfied", "Neutral", "Not Satisfied"],
    correctAnswer: "Satisfied",
    questionImg: Assets.imagesQ1,
  ),
  QuestionModel(
    question: "What vitamins do you take?",
    selections: ["Vitamin D3", "Vitamin B", "Zinc", "Magnisum"],
    correctAnswer: "Zinc",
    questionImg: Assets.imagesQ2,
  ),
];

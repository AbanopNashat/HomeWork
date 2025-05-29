import 'package:flutter/material.dart';
import 'package:quizz_app/styles/app_text_style.dart';
import 'package:quizz_app/widgets/question_header.dart';
import 'package:quizz_app/widgets/question_options.dart';

class QuestionItem extends StatelessWidget {
  const QuestionItem({super.key, required this.index, required this.questions});

  final int index;
  final List questions;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionHeader(
          title: "Question ${index + 1}",
          imgPath: questions[index].questionImg,
        ),
        SizedBox(height: 16),
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 8, end: 8),
          child: Text(
            questions[index].question,
            style: AppTextStyle.medium24(),
          ),
        ),
        SizedBox(height: 32),
        QuestionOptions(selections: questions[index].selections),
      ],
    );
  }
}

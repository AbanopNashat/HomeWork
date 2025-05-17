import 'package:flutter/material.dart';
import 'package:quizz_app/constants/assets.dart';
import 'package:quizz_app/models/question_model.dart';
import 'package:quizz_app/styles/app_colors.dart';
import 'package:quizz_app/styles/app_text_style.dart';
import 'package:quizz_app/widgets/custom_back_button.dart';
import 'package:quizz_app/widgets/custom_next_button.dart';
import 'package:quizz_app/widgets/question_header.dart';
import 'package:quizz_app/widgets/question_options.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Stack(
        children: [
          Image.asset(Assets.imagesGradient),
          SafeArea(
            child: Padding(
              padding: const EdgeInsetsDirectional.only(
                start: 10,
                top: 30,
                end: 10,
              ),
              child: Column(
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

                  QuestionOptions(
                    key: UniqueKey(),
                    selections: questions[index].selections,
                  ),

                  Expanded(
                    child: Row(
                      children: [
                        CustomBackButton(
                          onTap: () {
                            if (index == 0) {
                              Navigator.pop(context);
                            } else {
                              index--;
                              setState(() {});
                            }
                          },
                        ),
                        Spacer(flex: 1),
                        NextButton(
                          onTap: () {
                            if (index < questions.length - 1) {
                              index++;
                              setState(() {});
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

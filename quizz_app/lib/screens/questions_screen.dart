import 'package:flutter/material.dart';
import 'package:quizz_app/constants/assets.dart';
import 'package:quizz_app/models/question_model.dart';
import 'package:quizz_app/styles/app_colors.dart';
import 'package:quizz_app/styles/app_text_style.dart';
import 'package:quizz_app/widgets/custom_back_button.dart';
import 'package:quizz_app/widgets/custom_next_button.dart';
import 'package:quizz_app/widgets/question_header.dart';
import 'package:quizz_app/widgets/question_selection.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  bool isChecked = false;
  int index = 0;
  List<QuestionModel> questions = [
    QuestionModel(
      question:
          "How would you describe \nyour level of satisfaction \nwith the healthcare \nsystem?",
      selections: [
        "Strongly satisfied",
        "Satisfied",
        "Neutral",
        "Not Satisfied",
      ],
      questionImg: Assets.imagesQ1,
    ),
    QuestionModel(
      question: "What vitamins do you \ntake?",
      selections: ["Vitamin D3", "Vitamin B", "Zinc", "Magnisum"],
      questionImg: Assets.imagesQ2,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, top: 30, right: 10),
          child: Stack(
            children: [
              Image.asset(Assets.imagesGradient),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  QuestionHeader(
                    title: "Question ${index + 1}",
                    imgPath: questions[index].questionImg,
                  ),
                  SizedBox(height: 16),
                  Text(
                    questions[index].question,
                    style: AppTextStyle.medium24(),
                  ),
                  SizedBox(height: 32),
                  QuestionSelection(
                    isChecked: isChecked,
                    quesiton: questions[index].selections[0],
                  ),
                  SizedBox(height: 8),
                  QuestionSelection(
                    isChecked: isChecked,
                    quesiton: questions[index].selections[1],
                  ),
                  SizedBox(height: 8),
                  QuestionSelection(
                    isChecked: isChecked,
                    quesiton: questions[index].selections[2],
                  ),
                  SizedBox(height: 8),
                  QuestionSelection(
                    isChecked: isChecked,
                    quesiton: questions[index].selections[3],
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
                            index++;
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

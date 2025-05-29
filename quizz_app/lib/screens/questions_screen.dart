import 'package:flutter/material.dart';
import 'package:quizz_app/constants/assets.dart';
import 'package:quizz_app/models/question_model.dart';
import 'package:quizz_app/styles/app_colors.dart';
import 'package:quizz_app/widgets/custom_back_button.dart';
import 'package:quizz_app/widgets/custom_next_button.dart';
import 'package:quizz_app/widgets/question_item.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  PageController pageController = PageController();

  @override
  void dispose() {
    // TODO: implement dispose
    pageController.dispose();
    super.dispose();
  }

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
                children: [
                  Expanded(
                    flex: 4,
                    child: PageView.builder(
                      controller: pageController,
                      itemCount: questions.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: QuestionItem(
                            index: index,
                            questions: questions,
                          ),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        CustomBackButton(
                          onTap: () {
                            if (pageController.page!.toInt() == 0) {
                              Navigator.pop(context);
                            } else {
                              setState(() {
                                pageController.previousPage(
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.easeIn,
                                );
                              });
                            }
                          },
                        ),
                        Spacer(flex: 1),
                        NextButton(
                          onTap: () {
                            if (pageController.page!.toInt() <
                                questions.length - 1) {
                              setState(() {
                                pageController.nextPage(
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.easeIn,
                                );
                              });
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

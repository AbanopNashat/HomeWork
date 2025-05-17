import 'package:flutter/material.dart';
import 'package:quizz_app/styles/app_colors.dart';
import 'package:quizz_app/styles/app_text_style.dart';
import 'package:quizz_app/widgets/custom_check_icon.dart';

class InActiveQuestionSelection extends StatelessWidget {
  const InActiveQuestionSelection({super.key, required this.selection, required this.onTap});

  final String selection;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            InActiveCustomCheckIcon(),
            SizedBox(width: 16),
            Text(
              selection,
              style: AppTextStyle.medium18(color: AppColors.primaryColor),
            ),
          ],
        ),
      ),
    );
  }
}

class ActiveQuestionSelection extends StatelessWidget {
  const ActiveQuestionSelection({super.key, required this.selection});

  final String selection;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: AppColors.secondayColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          AtiveCustomCheckIcon(),
          SizedBox(width: 16),
          Text(
            selection,
            style: AppTextStyle.medium18(color: AppColors.primaryColor),
          ),
        ],
      ),
    );
  }
}

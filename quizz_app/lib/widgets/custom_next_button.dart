import 'package:flutter/material.dart';
import 'package:quizz_app/styles/app_colors.dart';
import 'package:quizz_app/styles/app_text_style.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key, required this.onTap});

  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
        decoration: BoxDecoration(
          color: AppColors.secondayColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.secondayColor),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Next", style: AppTextStyle.medium18()),
            SizedBox(width: 8),
            Icon(Icons.arrow_forward_ios, color: Colors.white),
          ],
        ),
      ),
    );
  }
}

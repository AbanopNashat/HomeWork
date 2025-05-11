import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quizz_app/styles/app_colors.dart';
import 'package:quizz_app/styles/app_text_style.dart';

class QuestionHeader extends StatelessWidget {
  const QuestionHeader({super.key, required this.title, required this.imgPath});
  final String title;
  final String imgPath;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.secondayColor,
        borderRadius: BorderRadius.circular(32),
      ),

      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(imgPath, width: 14, height: 14),
          SizedBox(width: 8),
          Text(title, style: AppTextStyle.regular12()),
        ],
      ),
    );
  }
}

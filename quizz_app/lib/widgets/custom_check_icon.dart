import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quizz_app/constants/assets.dart';
import 'package:quizz_app/styles/app_colors.dart';

class CustomCheckIcon extends StatelessWidget {
  const CustomCheckIcon({
    super.key,
    required this.isChecked,
    
  });
  final bool isChecked;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        color: isChecked ? AppColors.primaryColor : Colors.transparent,
        shape: BoxShape.circle,
        border: Border.all(
          color: isChecked ? AppColors.primaryColor : Colors.black,
          width: 2,
        ),
      ),
      child:
          isChecked
              ? SvgPicture.asset(Assets.imagesCheckMark, width: 16, height: 16)
              : null,
    );
  }
}

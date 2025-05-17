import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quizz_app/constants/assets.dart';
import 'package:quizz_app/styles/app_colors.dart';

class InActiveCustomCheckIcon extends StatelessWidget {
  const InActiveCustomCheckIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        color:  Colors.transparent,
        shape: BoxShape.circle,
        border: Border.all(
          color:  Colors.black,
          width: 2,
        ),
      ),
      child: null,
    );
  }
}


class AtiveCustomCheckIcon extends StatelessWidget {
  const AtiveCustomCheckIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        color: AppColors.primaryColor ,
        shape: BoxShape.circle,
        border: Border.all(
          color:  AppColors.primaryColor,
          width: 2,
        ),
      ),
      child:

              SvgPicture.asset(Assets.imagesCheckMark, width: 16, height: 16)

    );
  }
}

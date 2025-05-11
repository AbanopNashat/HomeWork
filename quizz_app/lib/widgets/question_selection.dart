import 'package:flutter/material.dart';
import 'package:quizz_app/styles/app_colors.dart';
import 'package:quizz_app/styles/app_text_style.dart';
import 'package:quizz_app/widgets/custom_check_icon.dart';

class QuestionSelection extends StatefulWidget {
  const QuestionSelection({
    super.key,
    required this.isChecked,
    required this.quesiton,
  });

  final bool isChecked;
  final String quesiton;

  @override
  State<QuestionSelection> createState() => _QuestionSelectionState();
}

class _QuestionSelectionState extends State<QuestionSelection> {
  late bool _isSelected;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _isSelected = widget.isChecked;
  }



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: _isSelected ? AppColors.secondayColor : Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomCheckIcon(
              isChecked: _isSelected,
            ),
            SizedBox(width: 16),
            Text(
              widget.quesiton,
              style: AppTextStyle.medium18(color: AppColors.primaryColor),
            ),
          ],
        ),
      ),
    );
  }
}

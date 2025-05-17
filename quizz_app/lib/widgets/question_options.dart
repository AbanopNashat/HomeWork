import 'package:flutter/material.dart';
import 'package:quizz_app/widgets/question_selection.dart';

class QuestionOptions extends StatefulWidget {
  const QuestionOptions({super.key, required this.selections});

  final List<String> selections;

  @override
  State<QuestionOptions> createState() => _QuestionOptionsState();
}

class _QuestionOptionsState extends State<QuestionOptions> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: widget.selections.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child:
              selectedIndex == index
                  ? ActiveQuestionSelection(selection: widget.selections[index])
                  : InActiveQuestionSelection(
                    selection: widget.selections[index],
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  ),
        );
      },
    );
  }
}

// selectedIndex == index
//             ? ActiveQuestionSelection(selection: widget.selections[index])
//             : InActiveQuestionSelection(selection: widget.selections[index]);

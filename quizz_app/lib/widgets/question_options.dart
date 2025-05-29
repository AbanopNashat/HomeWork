import 'package:flutter/material.dart';
import 'package:quizz_app/widgets/question_selection.dart';

class QuestionOptions extends StatefulWidget {
  const QuestionOptions({super.key, required this.selections});

  final List<String> selections;

  @override
  State<QuestionOptions> createState() => _QuestionOptionsState();
}

class _QuestionOptionsState extends State<QuestionOptions>
    with AutomaticKeepAliveClientMixin {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: widget.selections.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
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

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

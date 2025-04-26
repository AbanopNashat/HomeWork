import 'package:flutter/material.dart';

class NoTasksState extends StatelessWidget {
  const NoTasksState({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.task_alt, color: Color(0xffAACEC9), size: 100),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              "No tasks yet",
              style: TextStyle(color: Color(0xff717775), fontSize: 24),
            ),
          ),
          Text(
            "add a task to get started",
            style: TextStyle(color: Color(0xff9DA3A1), fontSize: 16),
          ),
        ],
      ),
    );
  }
}

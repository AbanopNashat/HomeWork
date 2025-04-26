import 'package:flutter/material.dart';
import 'package:tasks_app/widgets/add_text_bar.dart';
import 'package:tasks_app/widgets/no_task_state.dart';

class TasksHomeScreen extends StatelessWidget {
  const TasksHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Tasks", style: TextStyle(fontSize: 24)),
        backgroundColor: Color(0xff9DF1E2),
      ),
      body: Column(children: [Expanded(child: NoTasksState()), AddTextBar()]),
    );
  }
}

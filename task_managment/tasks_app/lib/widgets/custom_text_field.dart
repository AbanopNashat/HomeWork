import 'package:flutter/material.dart';
import 'package:tasks_app/models/task_model.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.tasksManager});
  final TasksManager tasksManager;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: (value) => tasksManager.add(value),
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xffDDE3E1),
        hintText: "Add a new task ...",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(24)),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(24),
        ),
      ),
    );
  }
}

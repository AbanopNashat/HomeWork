import 'package:flutter/material.dart';
import 'package:tasks_app/models/task_model.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.tasksManager,
    required this.controller,
    this.onTaskAdded,
  });

  final TasksManager tasksManager;
  final TextEditingController controller;
  final VoidCallback? onTaskAdded;

  void sumbitTask() {
    if (controller.text.isNotEmpty) {
      tasksManager.add(controller.text);
      controller.clear();

      // Call the callback to update UI
      if (onTaskAdded != null) {
        onTaskAdded!();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onSubmitted: (value) {
        sumbitTask();
      },
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

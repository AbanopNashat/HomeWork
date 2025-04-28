import 'package:flutter/material.dart';
import 'package:tasks_app/models/task_model.dart';
import 'package:tasks_app/widgets/custom_add_icon.dart';
import 'package:tasks_app/widgets/custom_text_field.dart';

class AddTextBar extends StatelessWidget {
  const AddTextBar({super.key, required this.tasksManager});
  final TasksManager tasksManager;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 20,
      shadowColor: Colors.black,
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10,
            bottom: 10,
            left: 4,
            right: 8,
          ),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 16.0,
                  ),
                  child: CustomTextField(tasksManager: tasksManager,),
                ),
              ),
              CustomAddIcon(),
            ],
          ),
        ),
      ),
    );
  }
}

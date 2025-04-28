import 'package:flutter/material.dart';
import 'package:tasks_app/models/task_model.dart';

class TaskCard extends StatefulWidget {
  const TaskCard({super.key, required this.taskModel});
  final TaskModel taskModel;

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        checkColor: Colors.white,
        activeColor: Colors.green,
        value: widget.taskModel.isCompleted,
        onChanged: (value) {
          setState(() {
            widget.taskModel.isCompleted = value!;
          });
        },
      ),
      title: Text(
        widget.taskModel.content!,
        style: TextStyle(
          fontSize: 24,
          decoration:
              widget.taskModel.isCompleted ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      subtitle: Text("Created: ${widget.taskModel.dateTime}"),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(Icons.delete, color: Colors.red),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tasks_app/models/task_model.dart';

class TaskCard extends StatefulWidget {
  TaskCard({
    super.key,
    required this.tasksManager,
    this.index = 0,
    this.onTaskChanged,
  });
  final TasksManager tasksManager;
  int index;
  final VoidCallback? onTaskChanged;

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
        value: widget.tasksManager.tasks[widget.index].isCompleted,
        onChanged: (value) {
          setState(() {
            widget.tasksManager.tasks[widget.index].isCompleted = value!;
          });
        },
      ),
      title: Text(
        widget.tasksManager.tasks[widget.index].content!,
        style: TextStyle(
          fontSize: 24,
          decoration:
              widget.tasksManager.tasks[widget.index].isCompleted
                  ? TextDecoration.lineThrough
                  : TextDecoration.none,
        ),
      ),
      subtitle: Text(
        "Created: ${widget.tasksManager.tasks[widget.index].dateTime}",
      ),
      trailing: IconButton(
        onPressed: () {
          widget.tasksManager.delete(widget.tasksManager.tasks[widget.index]);
          // Call the callback when task is deleted
          if (widget.onTaskChanged != null) {
            widget.onTaskChanged!();
          }
        },
        icon: Icon(Icons.delete, color: Colors.red),
      ),
    );
  }
}

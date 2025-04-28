import 'package:flutter/material.dart';
import 'package:tasks_app/models/task_model.dart';
import 'package:tasks_app/widgets/add_text_bar.dart';
import 'package:tasks_app/widgets/no_task_state.dart';
import 'package:intl/intl.dart';
import 'package:tasks_app/widgets/task_card.dart';

class TasksHomeScreen extends StatefulWidget {
  TasksHomeScreen({super.key});

  @override
  State<TasksHomeScreen> createState() => _TasksHomeScreenState();
}

class _TasksHomeScreenState extends State<TasksHomeScreen> {
  late TasksManager tasksManager;

  final List<TaskModel> tasks = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Tasks", style: TextStyle(fontSize: 24)),
        backgroundColor: Color(0xff9DF1E2),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return TaskCard(
                  taskModel: TaskModel(
                    content: "new task",
                    dateTime: DateFormat('dd/MM/yyyy').format(DateTime.now()),
                  ),
                );
              },
            ),
          ),
          AddTextBar(tasksManager: tasksManager,),
        ],
      ),
    );
  }
}

//AddTextBar()
//Expanded(child: NoTasksState())

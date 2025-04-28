import 'package:intl/intl.dart';

class TaskModel {
  String? content;
  String? dateTime;
  bool isCompleted;
  TaskModel({this.content, this.dateTime , this.isCompleted = false});
}

class TasksManager {
  List<TaskModel> tasks = [];

  void add(String content) {
    TaskModel taskModel = TaskModel();
    taskModel.content = content;
    taskModel.dateTime = DateFormat('dd/MM/yyyy').format(DateTime.now());
    taskModel.dateTime = DateFormat('dd/MM/yyyy').format(DateTime.now());
    tasks.add(taskModel);
  }

  void delete(dynamic task) {
    // Allow deleting by either index or TaskModel
    if (task is TaskModel) {
      tasks.remove(task);
    } else if (task is int && task >= 0 && task < tasks.length) {
      tasks.removeAt(task);
    }
  }
}

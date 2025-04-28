import 'package:intl/intl.dart';

class TaskModel {
  String? content;
  String? dateTime = DateFormat('dd/MM/yyyy').format(DateTime.now());
  bool isCompleted;
  TaskModel({ this.content, this.dateTime, this.isCompleted = false});
}

class TasksManager {
  List<TaskModel> tasks = [];

  void add(String content) {
    TaskModel taskModel = TaskModel();
    taskModel.content = content;
    tasks.add(taskModel);
  }

  void delete(TaskModel taskModel) {
    tasks.remove(taskModel);
  }
}

import 'package:intl/intl.dart';

class TaskModel {
  String? content;
  String? dateTime;
  bool isCompleted;
  TaskModel({this.content, this.dateTime, this.isCompleted = false});
}

class TasksManager {
  List<TaskModel> tasks = [];

  void add(String content) {
    TaskModel taskModel = TaskModel();
    taskModel.content = content;
    taskModel.dateTime = DateFormat('dd/MM/yyyy').format(DateTime.now());
    tasks.add(taskModel);
  }

  void delete(TaskModel taskModel) {
    tasks.remove(taskModel);
  }
}

import 'dart:io';

void main() {
  //   3. To-Do List App:
  // Create  a  to-do  list  program  using  a  List  where  each  item  has  a  description,  due  date,  and
  // completion  status  (as  bool).  Implement  methods  to  add,  remove,  and  update  tasks,  including  the
  // use of for-each loops.

  // I don't know if this what the problem here want but it took me quite sometime to code this spagehtti

  List<Task> tasks = [];
  while (true) {
    print("hello this is your to-do app");
    print("Enter 1 to add task");
    print("Enter 2 to update task");
    print("Enter 3 remove task");
    print("Enter 4 to show tasks");
    print("Enter 5 to exit");
    int choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        Task task = new Task();
        print("Enter it's description");
        String description = stdin.readLineSync()!;
        task.updateDescription(description);
        print("Enter it's date");
        String date = stdin.readLineSync()!;
        task.updateDueDate(date);
        tasks.add(task);
        break;
      case 2:
        print("Enter what task you need to update");
        String description = stdin.readLineSync()!;
        for (var task in tasks) {
          if (task.description == description) {
            print("Task founded, what do you want to update :");
            print("Enter 1 to description");
            print("Enter 2 to dueDate");
            print("Enter 3 to status");
            int updateChoice = int.parse(stdin.readLineSync()!);
            switch (updateChoice) {
              case 1:
                print("Enter new description : ");
                String description = stdin.readLineSync()!;
                task.description = description;
                break;
              case 2:
                print("Enter new date : ");
                String dueDate = stdin.readLineSync()!;
                task.dueDate = dueDate;
                break;
              case 3:
                print("Enter new status : ");
                bool status = bool.parse(stdin.readLineSync()!);
                task.status = status;
                break;
              default:
                print("wrong input");
                break;
            }
          } else {
            print("Task not founded");
          }
        }
        break;
      case 3:
        print("What task do you want to delete : ");
        String description = stdin.readLineSync()!;
        for (var task in tasks) {
          if (task.description == description) {
            print("Task founded");
          } else {
            print("Task not found");
          }
        }
        tasks.removeWhere((task) => task.description == description);
        break;
      case 4:
        if (tasks.isNotEmpty) {
          tasks.forEach((task) {
            print(task.description);
            print(task.dueDate);
            print(task.status);
          });
        } else {
          print("You don't have any tasks");
        }
        break;
      case 5:
        print("exiting ...");
        break;
      default:
        print("wrong input");
        break;
    }
    if (choice == 5) {
      break;
    }
  }
}

class Task {
  String? description;
  String? dueDate;
  bool? status = false;

  void updateDescription(String description) {
    this.description = description;
  }

  void updateDueDate(String dueDate) {
    this.dueDate = dueDate;
  }

  void updateStatus(bool status) {
    this.status = status;
  }
}

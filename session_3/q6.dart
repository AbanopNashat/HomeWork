import 'dart:io';

void main() {
  //   6. Working with Maps - Student Details:
  // -  Task  1:  Create  a  map  representing  a  student  with  keys  for  name,  age,  and  grade.  Add,  update,
  // and remove entries from the map, printing the map after each operation.
  // - Task 2: Iterate over the map and print each key-value pair.
  Map<String, dynamic> student = {'name': "Abanop", 'age': 22, 'grade': "B+"};
  while (true) {
    print("Enter 1 to add entry");
    print("Enter 2 to update entry");
    print("Enter 3 remove entry");
    print("Enter 4 to display the map");
    print("Enter 5 to exit");
    int choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        print("----------------------------");
        print("Enter your entry you want to add");
        String key = stdin.readLineSync() ?? "";
        print("Enter it's value");
        String value = stdin.readLineSync() ?? "";
        addEntry(student, key, value);
        print(student);
        break;
      case 2:
        print("----------------------------");
        print("Enter your entry you want to update");
        String key = stdin.readLineSync() ?? "";
        print("Enter it's value");
        String value = stdin.readLineSync() ?? "";
        updateEntry(student, key, value);
        print(student);
        break;
      case 3:
        print("----------------------------");
        print("Enter your entry you want to remove");
        String key = stdin.readLineSync() ?? "";
        removeEntry(student, key);
        print(student);
        break;
      case 4:
        print("----------------------------");
        displayMap(student);
        break;
      case 5:
        print("exiting ...");
        break;
      default:
        print("Wrong Input");
        break;
    }
    print("----------------------------");
    if (choice == 5) {
      break;
    }
  }
}

void addEntry(Map<String, dynamic> student, String key, dynamic value) {
  if (key.isNotEmpty && value.toString().isNotEmpty) {
    student[key] = value;
  } else {
    "Wrong data";
  }
}

void updateEntry(Map<String, dynamic> student, String key, dynamic value) {
  if (key.isNotEmpty && value.toString().isNotEmpty) {
    if (student.containsKey(key)) {
      student[key] = value;
    } else {
      print("didn't find this entry");
    }
  } else {
    "Wrong data";
  }
}

void removeEntry(Map<String, dynamic> student, String key) {
  if (key.isNotEmpty) {
    if (student.containsKey(key)) {
      student.remove(key);
    } else {
      print("didn't find this entry");
    }
  } else {
    print("Wrong input");
  }
}

//task 2.
void displayMap(Map<String, dynamic> student) {
  student.forEach((key, value) {
    print("$key : $value");
  });
}

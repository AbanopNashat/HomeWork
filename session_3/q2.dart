import 'dart:io';

void main() {
  //   2. Grocery List Manager:
  // Implement a program that uses a List to store grocery items. It should allow adding, removing, and
  // displaying  items.  Use  functions  with  return  types  and  optional/named  parameters.  Make  sure  to
  // handle possible null values.
  //-------------------------------------------------------

  List<String> groceryItems = [];

  while (true) {
    print("Enter 1 to add item");
    print("Enter 2 to remove item");
    print("Enter 3 to add display the grocery list");
    print("Enter 4 to exit");
    int choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        print("Enter your item");
        String item = stdin.readLineSync() ?? "";
        addItem(groceryItems: groceryItems, item: item);
        break;
      case 2:
        print("Enter your item");
        String item = stdin.readLineSync() ?? "";
        removeItem(groceryItems: groceryItems, item: item);
        break;
      case 3:
        displayItem(groceryItems: groceryItems);
        break;
      case 4:
        print("exiting ...");
        break;
      default:
        print("Wrong Input");
        break;
    }
    if (choice == 4) {
      break;
    }
  }
}

void addItem({required List<String> groceryItems, required String item}) {
  if (item.isNotEmpty) {
    groceryItems.add(item);
  } else {
    print("Wrong input");
  }
}

void removeItem({required List<String> groceryItems, required  String item}) {
  if (item.isNotEmpty) {
    groceryItems.remove(item);
  } else {
    print("Wrong input");
  }
}

void displayItem({required List<String> groceryItems}) {
  if (groceryItems.isEmpty) {
    print("Empty List");
  } else {
    for (var item in groceryItems) {
      print(item);
    }
  }
}

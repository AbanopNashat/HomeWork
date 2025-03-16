void main() {
  //   5. Class Creation and Dot Operator Usage:
  // Create a class with a few properties and methods. Instantiate the class and use the dot operator to
  // access and print its properties and methods.
  Human h1 = Human();
  h1.name = "abanop";
  h1.age = 22;
  h1.height = 176;
  print(h1.name);
  print(h1.age);
  print(h1.height);
}

class Human {
  String? name;
  int? age;
  int? height;
}

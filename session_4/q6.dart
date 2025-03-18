void main() {
  // 6. Null Safety, Encapsulation & Classes
  // Create a class `Person` with the following attributes:
  // - `String name`
  // - `int? age` (nullable)
  // - `bool isStudent` (default is false)
  // Implement:
  // - A constructor that initializes `name` and `age`.
  // - A method `displayInfo()` that prints the person's details.
  // In `main()`, create an instance of `Person` and call `displayInfo()`.
  Person user = Person("Abanop", 22);
  user.dsiplayInfo();
}

class Person {
  String name;
  int? age;
  bool isStudent = false;
  Person(this.name, this.age);
  void dsiplayInfo() {
    print("Person name : ${this.name}");
    print("Person age : ${this.age}");
    print("Person stauts : ${this.isStudent}");
  }
}

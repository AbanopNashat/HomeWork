void main() {
  //  Question 5
  //  What is the difference between var and dynamic in Dart? Provide an example of
  //  each.
  //-----------------------------
  // Answer : "var" is a keyword that decides it's type by looking after "=" sign , and it can be turned to dynamic if we didn't give it a value.
  // "dynamic" is a weak data type that accepts any type of data and can be changed with every assign
  //-----------------------------------
  var intNum = 20; // here var turns into int data type
  var doubleNum; // here var turns into dynamic data type
  dynamic dynamicVar;
  dynamicVar = "Here im String";
  print(dynamicVar);
  dynamicVar = 15;
  print("Here im int: $dynamicVar");
  dynamicVar = 10.65;
  print("Here im double: $dynamicVar");
}

import 'dart:io';

void main() {
  //   1. Basic Calculator:
  // Create  a  Dart  program  that  takes  two  numbers  as  input  and  performs  addition,  subtraction,
  // multiplication, and division using variables, arithmetic operators, and functions. Also, include
  // optional parameters for different operations (e.g., addition of multiple numbers).
  print("Enter first number ");
  num num1 = num.parse(stdin.readLineSync()!);
  print("Enter second number");
  num num2 = num.parse(stdin.readLineSync()!);
  print("-------------------------------------");

  print(addNumbers(num1, num2));
  print(subNumbers(num1, num2));
  print(mulNumbers(num1, num2));
  print(divNumbers(num1, num2));
}

num addNumbers([num num1 = 0, num num2 = 0]) {
  return num1 + num2;
}

num subNumbers([num num1 = 0, num num2 = 0]) {
  return num1 - num2;
}

num mulNumbers([num num1 = 1, num num2 = 1]) {
  return num1 * num2;
}

dynamic divNumbers([num num1 = 1, num num2 = 1]) {
  if (num2 == 0) {
    return "Invalid Number";
  }
  return num1 / num2;
}

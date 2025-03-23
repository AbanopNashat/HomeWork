import 'dart:io';

void main() {
  //   Basic Arithmetic Calculator
  // Write a function that takes two numbers and an operator (+, -, *, /) as input and returns the result.
  // Handle cases where division by zero might occur
  print("Enter first number");
  num num1 = num.parse(stdin.readLineSync()!);
  print("Enter second number");
  num num2 = num.parse(stdin.readLineSync()!);
  print("Enter the operation : '+ - * /' ");
  String op = stdin.readLineSync()!;
  print(calculator(num1, num2, op));
}

num calculator(num num1, num num2, String op) {
  switch (op) {
    case "+":
      return num1 + num2;
    case "-":
      return num1 - num2;
    case "*":
      return num1 * num2;
    case "/":
      if (num2 != 0) {
        return num1 / num2;
      } else {
        print("Cnt't devide by 0");
        return -1;
      }
    default:
      return -1;
  }
}

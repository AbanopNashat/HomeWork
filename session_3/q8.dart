import 'dart:io';

void main() {
  //   8. Range Checker Program:
  // Write a Dart program that checks if a number is within a specified range using logical operators and
  // prints the result
  print("Enter your number");
  num input = num.parse(stdin.readLineSync()!);
  if (input > 10 && input < 20) {
    print("Your number is bigger than 10 and smaller than 20");
  }
}

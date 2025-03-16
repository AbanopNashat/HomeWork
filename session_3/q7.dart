import 'dart:io';

void main() {
  //   7. Number Check Program:
  // Create a program that asks the user to input a number and checks if it's positive, negative, or zero
  // using if-else statements.
  print("Enter your number");
  num input = num.parse(stdin.readLineSync()!);
  checkNumber(input);
}

void checkNumber(num input) {
  if (input > 0) {
    print("Positive Number");
  } else if (input < 0) {
    print("Negative Number");
  } else {
    print("Zero");
  }
}

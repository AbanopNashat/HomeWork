import 'dart:io';

void main() {
  //   Check Leap Year
  // Write a function that determines if a given year is a leap year.
  // A year is a leap year if it is divisible by 4 but not divisible by 100, except if it is also divisible by 400
  print("Enter the year");
  int year = int.parse(stdin.readLineSync()!);
  print(checkLeapYear(year));
}

bool checkLeapYear(int year) {
  if (year % 400 == 0) {
    return true;
  }
  
  if (year % 4 == 0 && year % 100 != 0) {
    return true;
  } else {
    return false;
  }
}

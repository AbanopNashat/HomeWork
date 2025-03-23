import 'dart:io';

void main() {
  // Temperature Converter
  // Write a function that converts temperature from Celsius to Fahrenheit and vice versa.
  // Accept temperature value and unit ('C' for Celsius, 'F' for Fahrenheit) as inputs.
  // Convert accordingly and return the result
  print("Enter your temprature");
  num temprature = num.parse(stdin.readLineSync()!);
  print("Enter the unit : 'c or f'");
  String unit = stdin.readLineSync()!;
  print(calcTemp(temprature, unit));
}

num calcTemp(num temprature, String unit) {
  switch (unit) {
    case "c" || "C":
      return (temprature * 9 / 5) + 32;
    case "f" || "F":
      return (temprature - 32) * 5/9 ;
    default:
      print("Wrong input");
      return -1;
  }
}

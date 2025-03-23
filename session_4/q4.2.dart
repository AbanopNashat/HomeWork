import 'dart:io';
import 'dart:math';
void main() {
  // Find Prime Numbers in a Range
  // Write a function that takes two numbers (start, end) and returns a list of all prime numbers between
  // them.
  // Ensure  that  the  function  correctly  identifies  prime  numbers  and  handles  edge  cases  where  start  is
  // greater than end.
  //----------------------------------------
  //all prime numbers are odd except 2 is the only even number, we skip checking 1 and 2 and start checking from 3 and above
  //after making some research  we just need to check divisiors up to the square root
  print("Enter the start of the range");
  int start = int.parse(stdin.readLineSync()!);
  print("Enter the end of the range");
  int end = int.parse(stdin.readLineSync()!);

  List<int> primesInRange = findPrimesInRange(start, end);

  print("Prime numbers between $start and $end are: $primesInRange");
}

bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }
  if (number == 2) {
    return true;
  }
  if (number % 2 == 0) {
    return false;
  }
  for (int i = 3; i <= sqrt(number); i += 2) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}

List<int> findPrimesInRange(int start, int end) {
  List<int> primeNumbers = [];
  for (int i = start; i <= end; i++) {
    if (isPrime(i)) {
      primeNumbers.add(i);
    }
  }
  return primeNumbers;
}

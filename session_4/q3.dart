void main() {
  //   3. Lists, Loops & If Conditions
  // Create a list of numbers. Iterate over the list and:
  // - If a number is even, print "Even: <number>".
  // - If a number is odd, print "Odd: <number>".
  List<num> numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
  List<num> evenNums = [];
  List<num> oddNums = [];
  for (var i = 0; i < numbers.length; i++) {
    if (numbers[i] % 2 == 0) {
      evenNums.add(numbers[i]);
    } else {
      oddNums.add(numbers[i]);
    }
  }
  print("The even numbers : $evenNums");
  print("The odd numbers : $oddNums");
}

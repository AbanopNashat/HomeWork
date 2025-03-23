void main() {
  //   Sum of List Elements
  // Write a function that takes a list of numbers and returns the sum of all elements.
  // Example:
  // sumList([1, 2, 3, 4, 5]) -> 15
  List<num> numbers = [1, 2, 3, 4, 5];
  print(sumList(numbers));
}

num sumList(List<num> numbers) {
  num sum = 0;
  for (var number in numbers) {
    sum += number;
  }
  return sum;
}

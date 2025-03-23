void main() {
  //   Reverse a String
  // Write a function that takes a string as input and returns the string reversed.
  print(reverseString("hello"));
}

String reverseString(String phrase) {
  //made a list of chars then reversed it's order then joined them into one string.
  return phrase.split("").reversed.join();
}

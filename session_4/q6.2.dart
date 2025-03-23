void main() {
  //   Count Words in a Sentence
  // Write a function that counts the number of words in a given sentence.
  // Words are separated by spaces, and the function should ignore extra spaces.
  print(countWords("  Hello world  "));
}

int countWords(String phrase) {
  List<String> words = phrase.split(" ");
  words.removeWhere((word) => word.isEmpty);
  return words.length;
}

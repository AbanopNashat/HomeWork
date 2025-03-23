void main() {
  //   Find the Longest Word
  // Write a function that takes a sentence as input and returns the longest word in the sentence.
  // If multiple words have the same longest length, return the first one that appears.
  // generated some test cases with deepseek and after watching the behavior of the code I needed to skip the special chars so line 10 does this job.
  //-------------------------------------------------
  // here flutter and amazing have the same length but flutter came first.
  print(longestWord("Flutter is amazing, isn't it?"));
}

String longestWord(String phrase) {
  String noSpecialChars = phrase.replaceAll(RegExp(r'[^\w\s]'), '');
  List<String> words = noSpecialChars.split(" ");
  String conatiner = "";
  for (var word in words) {
    if (conatiner.length < word.length) {
      conatiner = word;
    }
  }
  return conatiner;
}

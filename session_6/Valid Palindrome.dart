void main() {
  print(isPalindrome(" "));
}

bool isPalindrome(String s) {
  String noSpecialChars =
      s.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();
  String noSpecialCharsReversed =
      noSpecialChars.split('').reversed.join().toLowerCase();
  if (noSpecialChars == noSpecialCharsReversed) {
    return true;
  } else {
    return false;
  }
}

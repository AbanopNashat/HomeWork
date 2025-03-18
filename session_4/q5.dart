void main() {
  //   5. Sets, Functions & Return Statement
  // Write a function `uniqueNames(List<String> names)` that:
  // - Accepts a list of names.
  // - Returns a Set containing only unique names.
  // Call the function inside `main()` and print the result.
  List<String> names = ["Abanop", "Mina", "Abanop", "Tharwat" , "Mina"];
  print(uniqueNames(names));
}

Set uniqueNames(List<String> names) {
  Set<String> uniqueNames = names.toSet();
  return uniqueNames;
}

void main() {
  //   4. Maps, Functions & User Input
  // Create a Dart program that:
  // - Declares a `Map<String, int>` where keys are fruit names and values are their
  // prices.
  // -  Implements  a  function  `getPrice(String  fruitName)`  that  returns  the  price  of  a
  // given fruit.
  // - If the fruit is not found, return -1.
  // Call the function inside `main()` and print the result.
  Map<String, int> fruitePrices = {"apple": 20, "banana": 30, "mango": 40};
  print(getPrice(fruitePrices, "mango"));
}

int? getPrice(Map<String, int> fruitePrices, String name) {
  int? price = 0;
  if (fruitePrices.containsKey(name)) {
    price = fruitePrices[name];
    return price;
  } else {
    return -1;
  }
}

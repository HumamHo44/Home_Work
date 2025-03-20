// Create a Dart program that:
// - Declares a `Map<String, int>` where keys are fruit names and values are their prices.
// - Implements a function `getPrice(String fruitName)` that returns the price of a
// given fruit.
// - If the fruit is not found, return -1.
// Call the function inside `main()` and print the result.
// .___________________________________________________________________.
//                        |Answer|
import 'dart:io';

void main() {
  Map<String, int> fruitPrices = {'banana': 20, 'apple': 14, 'kiwi': 40};
  print("Enter a fruit name:");
  String fruitName = stdin.readLineSync()!;
  int price = getPrice(fruitName, fruitPrices);
  print('price of $fruitName is $price ');
}

int getPrice(String fruitName, Map<String, int> fruitPrices) {
  if (fruitPrices.containsKey(fruitName)) {
    return fruitPrices[fruitName]!;
  } else {
    return -1;
  }
}

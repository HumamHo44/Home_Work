// Write a Dart program that checks if a number is within a specified range using logical operators and
// prints the result.
// .___________________________________________________________________.
//                        |Answer|

import 'dart:io';

void main() {
  int min = 20;
  int max = 50;
  print('Enter a number to check if it is within range:');
  String? input = stdin.readLineSync();

  if (input != null) {
    int number = int.parse(input);
    if (number >= min && number <= max) {
      print('The number $number is in the range $min to $max');
    } else {
      print('The number $number is not in the range $min to $max');
    }
  }
}

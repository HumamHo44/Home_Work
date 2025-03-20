// Create a program that asks the user to input a number and checks if it's positive, negative, or zero
// using if-else statements.
// .___________________________________________________________________.
//                        |Answer|

import 'dart:io';

void main() {
  print('Please enter a number');
  String? input = stdin.readLineSync();

  if (input != null && input.isNotEmpty) {
    double number = double.parse(input);
    if (number > 0) {
      print('This number is positive: $number');
    } else if (number < 0) {
      print('This number is negative: $number');
    } else {
      print('This number is zero: $number');
    }
  } else {
    print('No number entered:');
  }
}

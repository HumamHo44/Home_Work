// Create a Dart program that takes two numbers as input and performs addition, subtraction,
// multiplication, and division using variables, arithmetic operators, and functions. Also, include
// optional parameters for different operations (e.g., addition of multiple numbers).
// .___________________________________________________________________.
//                        |Answer|

import 'dart:io';

void main() {
  print('Please enter the first number:');
  double num1 = double.parse(stdin.readLineSync()!);
  print('Please enter the second number:');
  double num2 = double.parse(stdin.readLineSync()!);
  print(
    'Please enter a third number (optional, leave it blank if not needed):',
  );
  String? input3 = stdin.readLineSync();
  double? num3 =
      input3 != null && input3.isNotEmpty ? double.parse(input3) : null;
  print('Addition: ${equationAddition(num1, num2, num3)}');
  print('Subtraction: ${equationSubtraction(num1, num2)}');
  print('Multiplication: ${equationMultiplication(num1, num2)}');
  print('Division: ${equationDivision(num1, num2)}');

  print('Number one:: $num1');
  print('Number two: $num2');
  print('Number three: $num3');
}

// Addition function
double equationAddition(double num1, double num2, [double? num3]) {
  double sum = num1 + num2;
  if (num3 != null) {
    sum += num3;
  }
  return sum;
}

// subtraction function
double equationSubtraction(double num1, double num2) {
  return num1 - num2;
}

// multiplication function
double equationMultiplication(double num1, double num2) {
  return num1 * num2;
}

// division function
double equationDivision(double num1, double num2) {
  if (num2 == 0) {
    print("Error: Cannot divide by zero.");
  }
  return num1 / num2;
}

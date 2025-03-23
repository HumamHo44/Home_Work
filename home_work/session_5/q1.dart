// Write a function that takes two numbers and an operator (+, -, *, /) as input and returns the result.
// Handle cases where division by zero might occur.
// .___________________________________________________________________.
//                        |Answer|

void main() {
  allOperations(10, 5, '+');
  allOperations(10, 5, '-');
  allOperations(10, 5, '*');
  allOperations(10, 5, '/');
  allOperations(10, 5, '%');
}

void allOperations(double num1, double num2, String operator) {
  if (operator == '+') {
    print('addition: ${num1 + num2}');
  } else if (operator == '-') {
    print('subtraction: ${num1 - num2}');
  } else if (operator == '*') {
    print('multiplication:${num1 * num2}');
  } else if (operator == '/') {
    if (num2 == 0) {
      print('error: Cannot divide by zero');
    } else {
      print('division: ${num1 / num2}');
    }
  } else {
    print('error Invalid operator ');
  }
}

// Write a program that prints the numbers 1 to 20 but:
// - If a number is divisible by 3, print "Fizz".
// - If a number is divisible by 5, print "Buzz".
// - If a number is divisible by both 3 and 5, print "FizzBuzz".
// .___________________________________________________________________.
//                        |Answer|

void main() {
  int number = 20;
  print(number);
  for (var i = 1; i <= number; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      print('$i FizzBuzz');
    } else if (i % 3 == 0) {
      print('$i Fizz');
    } else if (i % 5 == 0) {
      print('$i Buzz');
    } else {
      print(i);
    }
  }
}

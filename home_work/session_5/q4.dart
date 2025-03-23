// Write a function that takes two numbers (start, end) and returns a list of all prime numbers between them.
// Ensure that the function correctly identifies prime numbers and handles edge cases where start is
// greater than end.
// .___________________________________________________________________.
//                        |Answer|

void main() {
  print(numbersPrime(10, 20));
  print(numbersPrime(1, 20));
  print(numbersPrime(30, 20));
}

List<int> numbersPrime(int start, int end) {
  List<int> number = [];
  if (start > end) {
    return number;
  }
  for (int i = start; i <= end; i++) {
    if (isPrime(i)) {
      number.add(i);
    }
  }
  return number;
}

bool isPrime(int num) {
  if (num <= 1) return false;
  if (num == 2 || num == 3) return true;
  if (num % 2 == 0 || num % 3 == 0) return false;
  for (int i = 5; i * i <= num; i += 2) {
    if (num % i == 0) return false;
  }
  return true;
}

// Write a function that takes a list of numbers and returns the sum of all elements.
// Example:
// sumList([1, 2, 3, 4, 5]) -> 15
// .___________________________________________________________________.
//                        |Answer|
void main() {
  print(sumList([1, 2, 3, 4, 5]));
}

int sumList(List<int> number) {
  int sum = 0;
  for (var num in number) {
    sum += num;
  }
  return sum;
}

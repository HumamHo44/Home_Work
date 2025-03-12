// Instructions:
// - Create a set named uniqueNumbers with the values {10, 20, 30, 40}.
// - Print the length of uniqueNumbers.
// - Check if the number 20 is present in the set and print the result.
// .___________________________________________________________________.
//                        |Answer|

void main() {
  //  Create a set named uniqueNumbers with the values {10, 20, 30, 40}.
  Set<int> uniqueNumbers = {10, 20, 30, 40};
  //  Print the length of uniqueNumbers.
  print("the length of: ${uniqueNumbers.length}");
  //  Check if the number 20 is present in the set and print the result.
  print("Is the number available? :${uniqueNumbers.contains(20)}");
}

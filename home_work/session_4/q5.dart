// Write a function `uniqueNames(List<String> names)` that:
// - Accepts a list of names.
// - Returns a Set containing only unique names.
// Call the function inside `main()` and print the result.
// 6. Null Safety, Encapsulation & Classes
// .___________________________________________________________________.
//                        |Answer|

void main() {
  List<String> names = ['humam', 'ali', 'ahmed', ' mohamed', 'humam', 'ali'];
  print(uniqueNames(names));
}

Set<String> uniqueNames(List<String> names) {
  Set<String> name = names.toSet();
  return name;
}

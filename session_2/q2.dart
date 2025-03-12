// Instructions:
// - Create a list named colors with the values ['red', 'green', 'blue'].
// - Add 'yellow' to the list and print the updated list.
// - Remove 'green' from the list and print the updated list.
// .___________________________________________________________________.
//                        |Answer|

void main() {
  // Create a list named colors with the values ['red', 'green', 'blue'].
  List<String> colors = ['red', 'green', 'blue'];
  //  Add 'yellow' to the list and print the updated list.
  colors.add('yellow');
  print(colors);
  //  Remove 'green' from the list and print the updated list.
  colors.remove('green');
  print(colors);
}

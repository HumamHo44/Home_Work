// Create a list of numbers. Iterate over the list and:
// - If a number is even, print "Even: <number>".
// - If a number is odd, print "Odd: <number>".
// .___________________________________________________________________.
//                        |Answer|

void main() {
  List numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];

  for (var nunber in numbers) {
    if (nunber % 2 == 0) {
      print('Even: $nunber');
    } else {
      print('Odd:$nunber');
    }
  }
}

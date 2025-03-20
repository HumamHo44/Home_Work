import 'dart:io';
// Instructions:
// - Create an integer variable marks.
// - If marks is 70 or higher, print 'Passed', otherwise print 'Failed'.
// .___________________________________________________________________.
//                        |Answer|

void main() {
  // Create an integer variable marks.
  int marks = int.parse(stdin.readLineSync()!);
  // If marks is 70 or higher, print 'Passed', otherwise print 'Failed'.
  if (marks >= 70) {
    print('Passed');
  } else {
    print('Failed');
  }
}

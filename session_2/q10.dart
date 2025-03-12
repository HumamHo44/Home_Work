// Instructions:
// - Create a nullable integer variable score but do not assign it a value.
// - Print score if it has a value, otherwise print 'No score'.
// - Try assigning a value to score and run the code again to see the change.
// .___________________________________________________________________.
//                        |Answer|

void main() {
  // Create a nullable integer variable score but do not assign it a value.
  int? score;
  //  Try assigning a value to score and run the code again to see the change.
  // int? score = 10;

  //.___________________________________________________________________.
  // Print score if it has a value, otherwise print 'No score'.
  if (score != null) {
    print('score');
  } else {
    print('No score');
  }
}

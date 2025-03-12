import 'dart:io';
// Instructions:
// - Create an integer variable temperature.
// - If temperature is above 30, print 'It's hot!'.
// - If it's between 15 and 30, print 'It's warm.'.
// - Otherwise, print 'It's cold.'.
// .___________________________________________________________________.
//                        |Answer|

void main() {
  // Create an integer variable temperature.
  int temperature = int.parse(stdin.readLineSync()!);
  // If temperature is above 30, print 'It's hot!'.
  if (temperature > 30) {
    print("It's hot!");
    // If it's between 15 and 30, print 'It's warm.'.
  } else if (temperature >= 15 && temperature <= 30) {
    print("It's warm.");
    // Otherwise, print 'It's cold.'.
  } else {
    print("It's cold.");
  }
}

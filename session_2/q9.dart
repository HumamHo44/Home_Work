import 'dart:io';
// Instructions:
// - Create an integer variable month with a value between 1 and 12.
// - Use a switch statement to print the season based on the month.
// .___________________________________________________________________.
//                        |Answer|

void main() {
  print('Enter a number (1-12) for the month:');
  int? number = int.tryParse(stdin.readLineSync() ?? "");

  switch (number) {
    case 12:
    case 1:
    case 2:
      print("Winter");
      break;
    case 3:
    case 4:
    case 5:
      print("Spring");
      break;
    case 6:
    case 7:
    case 8:
      print("Summer");
      break;
    case 9:
    case 10:
    case 11:
      print("Autumn");
      break;
  }
}

// Write a function `getDayType(String day)` that:
// - Uses a switch case to return "Weekend" if the day is "Saturday" or "Sunday".
// - Returns "Weekday" otherwise.
// - If the input is invalid, return "Invalid day".
// Call the function inside `main()` and print the result.
// .___________________________________________________________________.
//                        |Answer|

void main() {
  String day = 'Saturday';
  getDayType(day);
  String day2 = 'Thursday';
  getDayType(day2);
}

String getDayType(String day) {
  switch (day) {
    case 'Saturday':
      print('Weekend');

    case 'Sunday':
      print('Weekend');
    default:
      print('Weekday');
  }
  return day;
}

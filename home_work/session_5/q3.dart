// Write a function that determines if a given year is a leap year.
// A year is a leap year if it is divisible by 4 but not divisible by 100, except if it is also divisible by 400.
// .___________________________________________________________________.
//                        |Answer|
void main() {
  print('2008: ${determinesYear(2008)}');
  print('1900: ${determinesYear(1900)}');
  print('2000: ${determinesYear(2000)}');
  print('2025: ${determinesYear(2025)}');
}

bool determinesYear(int years) {
  // A year is a leap year if it is not divisible by 4 but not divisible by 100.
  // Or if it is divisible by 400.
  if (years % 4 == 0 && years % 100 != 0 || years % 400 == 0) {
    return true;
  } else {
    return false;
  }
}

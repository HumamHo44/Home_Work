// Write a function `calculateBonus(int salary, int yearsWorked)` that calculates a
// bonus based on the following rules:
// - If the employee has worked for 5 or more years, they get a 10% bonus.
// - Otherwise, they get a 5% bonus.
// The function should return the bonus amount.
// Then, call the function inside `main()` and print the result.
// .___________________________________________________________________.
//                        |Answer|

void main() {
  int salary = 2000;
  int yearsWorked = 5;
  double bonus = alculateBonus(salary, yearsWorked);
  print('bonus:\$ ${bonus} ');
}

double alculateBonus(int salary, int yearsWorked) {
  if (yearsWorked >= 5) {
    return salary * 0.10;
  } else {
    return salary * 0.05;
  }
}

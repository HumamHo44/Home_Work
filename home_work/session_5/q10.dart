// Implement an employee payroll system.
// Create a base Employee class with properties: name, id, and salary.
// Implement a method calculateSalary() in the base class.
// Create two subclasses:
// - FullTimeEmployee: Adds a bonus and overrides calculateSalary() to include the bonus.
// - PartTimeEmployee: Adds hoursWorked and hourlyRate, overriding calculateSalary() to compute
// salary based on hours worked.
// .___________________________________________________________________.
//                        |Answer|

import 'employee.dart';

void main() {
  FullTimeEmployee fullTimeEmployee = FullTimeEmployee(
    name: 'humam',
    id: 1,
    salary: 2000,
    bonus: 1000,
  );
  print('FullTimeEmployee: ${fullTimeEmployee.calculateSalary()}');

  PartTimeEmployee partTimeEmployee = PartTimeEmployee(
    name: 'ahmed',
    id: 2,
    hoursWorked: 20,
    hourlyRate: 30,
  );
  print("PartTimeEmployee: ${partTimeEmployee.calculateSalary()}");
}

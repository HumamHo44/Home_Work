class Employee {
  String name;
  int id;
  double salary;
  Employee({required this.name, required this.id, required this.salary});
  calculateSalary() {
    return salary;
  }
}

class FullTimeEmployee extends Employee {
  double bonus;
  FullTimeEmployee({
    required super.name,
    required super.id,
    required super.salary,
    required this.bonus,
  });

  @override
  calculateSalary() {
    return salary + bonus;
  }
}

class PartTimeEmployee extends Employee {
  double hoursWorked;
  double hourlyRate;
  PartTimeEmployee({
    required super.name,
    required super.id,
    required this.hoursWorked,
    required this.hourlyRate,
  }) : super(salary: 0);

  @override
  calculateSalary() {
    return hoursWorked * hourlyRate;
  }
}

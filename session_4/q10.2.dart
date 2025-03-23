void main() {
  //   Employee Payroll System
  // Implement an employee payroll system.
  // Create a base Employee class with properties: name, id, and salary.
  // Implement a method calculateSalary() in the base class.
  // Create two subclasses:
  // - FullTimeEmployee: Adds a bonus and overrides calculateSalary() to include the bonus.
  // -  PartTimeEmployee:  Adds  hoursWorked  and  hourlyRate,  overriding  calculateSalary()  to  compute
  // salary based on hours worked.
  FullTimeEmployee employee = FullTimeEmployee(
    name: "Abanop",
    id: 20,
    bonus: 3000,
    salary: 10000,
  );
  PartTimeEmployee partTimeEmployee = PartTimeEmployee(
    name: "Mina",
    id: 50,
    hoursWorked: 20,
    hourlyRate: 300,
  );

  employee.calculateSalary();
  partTimeEmployee.calculateSalary();
  print(employee.salary);
  print(partTimeEmployee.salary);
}

class Employee {
  String name;
  int id;
  double salary;
  Employee({required this.name, required this.id, this.salary = 0});

  calculateSalary() {}
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
    this.salary = salary + bonus;
  }
}

class PartTimeEmployee extends Employee {
  double hoursWorked;
  double hourlyRate;
  PartTimeEmployee({
    required super.name,
    required super.id,
    super.salary,
    required this.hoursWorked,
    required this.hourlyRate,
  });
  @override
  calculateSalary() {
    this.salary = this.hoursWorked * this.hourlyRate;
  }
}

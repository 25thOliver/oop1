import 'dart:io';
class Employee
{
  String _name;
  String _address;
  double _salary;
  String _jobTitle;

  Employee(this._name, this._address, this._salary, this._jobTitle);

  Employee.empty()
  : _name = "",
    _address = "",
    _salary = 0.0,
    _jobTitle = "";
  
   
  void e_input()
  {
    stdout.write("Employee name: ");
    _name = stdin.readLineSync()!;
    stdout.write("Address: ");
    _address = stdin.readLineSync()!;
    stdout.write("Salary: ");
    _salary = double.parse(stdin.readLineSync()!);
    stdout.write("Job Title: ");
    _jobTitle = stdin.readLineSync()!;
  }

  void e_output()
  {
    print("Employee's Name: $_name");
    print("Address: $_address");
    print("Salary: $_salary");
    print("Job Title: $_jobTitle");
  }

  double CalculateBonus()
  {
    return 0.0;
  }

  String PerformanceReport()
  {
    return "No performance report available.";
  }
}

class Manager extends Employee
{
  late int _numSubordinates = 0;

  Manager(String _name, String _address, double _salary, String _jobTitle, int _numSubordinates)
      : super(_name, _address, _salary, _jobTitle)
      {
        _numSubordinates = _numSubordinates;
      }
      
  void m_input()
  {
    super.e_input();

    stdout.write("How many subordinated do you manage? ");
    _numSubordinates = int.parse(stdin.readLineSync()!);
  }

  void m_output()
  {
    super.e_output();

    print("Number of Subordinate: $_numSubordinates");
  }

  void CompanyNature()
  {
    do
    {
      print("This is a valid company!");
      _numSubordinates++;
    } while(_numSubordinates >= 2);
  }

  double CalculateBonus()
  {
    return _salary * 0.15;
  }


  String PerformanceReport()
  {
    return "Performance report for manager ${_name} is excellent.";
  }

  void projectManage()
  {
    print("Manager ${_name} is managing a project.");
  }
}

void main()
{
  var emp1 = Employee("", "", 0.0, "");
  var manager = Manager("", "", 0.0, "", 0);

  print("\nData Capture for an Employee:");
  print("___________________________________");
  emp1.e_input();
  print("");
  
  print("Analysis for the first Employee: ");
  print("________________________________________");
  emp1.e_output();
  print("");
  

  print("\nData Capture for the first Manager: ");
  print("__________________________________________");
  manager.m_input();
  print("");

  print("Analysis for the first Manager: ");
  manager.m_output();
  print("Manager's Bonus: ${manager.CalculateBonus()}");
  print("${manager.PerformanceReport()}");
  manager.projectManage();
  manager.CompanyNature();
  print("");
}
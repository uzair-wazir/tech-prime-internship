import 'dart:io';

abstract class Report {
  void showDetails();
}

class Person {
  String name;
  int age;
  Person(this.name, this.age);

  void showBasicInfo() {
    print('name:  $name');
    print('Age : $age');
  }
}

class Student extends Person implements Report {
  int regNo;
  double marks;
  Student(String name, int age, this.regNo, this.marks) : super(name, age) {
    if (marks < 0 || marks > 100) {
      throw ArgumentError('Marks must be between Zero and Hundred. Got $marks');
    }
  }
  @override
  void showDetails() {
    showBasicInfo();
    print('RegNo: $regNo');
    print('Marks: $marks');
  }
}

class StudentManager {
  List<Student> studentList = [];
  Map<int, Student> studentMap = {};
  void addStudent(Student s) {
    studentList.add(s);
    studentMap[s.regNo] = s;
    print('Student Added: ${s.name}(RegNo: ${s.regNo}) ');
  }

  Student findByRegNo(int regNo) {
    if (!studentMap.containsKey(regNo)) {
      throw Exception('No student found with RegNo:$regNo');
    }
    return studentMap[regNo]!;
  }

  void showAllStudent() {
    if (studentList.isEmpty) {
      print('No Student Added');
      return;
    }
    print('\n    All Students(${studentList.length})');
    for (Student s in studentList) {
      s.showDetails();
    }
  }

  Future<String> fetchStudentDataFromServer(int regNo) async {
    print('connecting to server');
    await Future.delayed(Duration(seconds: 2));
    return "Server sync complete for roll number $regNo";
  }
}

void printHeader(String title) {
  print('=' * 4);
  print('    $title');
  print('=' * 4);
}

void printDashboard() {
  print('\n---------- DASHBOARD ----------');
  print('1. Add Student');
  print('2. Show All Students');
  print('3. Search Student by RegNo');
  print('4. Sync With Server (async demo)');
  print('5. Exit');
  print('--------------------------------');
  stdout.write('Choose an option: ');
}

void main() async {
  StudentManager manager = StudentManager();
  printHeader('STUDENT MANAGEMENT SYSTEM');

  bool running = true;

  while (running) {
    printDashboard();
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        try {
          stdout.write('Enter name: ');
          String name = stdin.readLineSync() ?? "";

          stdout.write('Enter age: ');
          int age = int.parse(stdin.readLineSync() ?? "0");

          stdout.write('Enter RegNo: ');
          int regNo = int.parse(stdin.readLineSync() ?? "0");

          stdout.write('Enter marks: ');
          double marks = double.parse(stdin.readLineSync() ?? "0");

          manager.addStudent(Student(name, age, regNo, marks));
        } catch (e) {
          print('Error Adding Student: $e');
        }
        break;

      case '2':
        manager.showAllStudent();
        break;

      case '3':
        try {
          stdout.write('Enter RegNo to search: ');
          int regNo = int.parse(stdin.readLineSync() ?? "0");
          Student found = manager.findByRegNo(regNo);
          found.showDetails();
        } catch (e) {
          print('Error: $e');
        }
        break;

      case '4':
        try {
          stdout.write('Enter RegNo to sync: ');
          int regNo = int.parse(stdin.readLineSync() ?? "0");
          String result = await manager.fetchStudentDataFromServer(regNo);
          print(result);
        } catch (e) {
          print('Error: $e');
        }
        break;

      case '5':
        running = false;
        print('Goodbye!');
        break;

      default:
        print('Invalid option. Please choose 1-5.');
    }
  }
}

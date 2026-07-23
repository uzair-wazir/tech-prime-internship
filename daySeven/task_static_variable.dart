void main() {
  var obj = Student();
  print(obj.name);
  print(Student.regNo);
}

class Student {
  var name = 'uzair';
  static int regNo = 10474;
}

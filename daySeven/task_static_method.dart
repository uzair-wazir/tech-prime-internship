void main() {
  var obj = Student();
  print(obj.name);
  Student.display();
}

class Student {
  var name = 'uzair';
  static int regNo = 10474;

  static void display() {
    print(regNo);
  }
}

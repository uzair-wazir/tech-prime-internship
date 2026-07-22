void main() {
  var obj = Marks();
  obj.display_student();
  obj.display_marks();
}

class Student {
  var name = 'uzair';
  var regNo = 10474;
  void display_student() {
    print('Name= $name\nReg No=$regNo');
  }
}

class Marks extends Student {
  var cal = 90;
  var OOP = 85;
  void display_marks() {
    print('Calculas=$cal \nOOP=$OOP');
  }
}

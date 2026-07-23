void main() {
  var obj = Marks();
  obj.display();
}

abstract class Student {
  var name = 'uzair';
  var regNo = 10474;
  void display() {
    print('name=$name  \nRegNo=$regNo');
  }
}

class Marks extends Student {
  var eng = 89;
  void display() {
    print('name=$name  \nRegNo=$regNo');
    print('Eng=$eng');
  }
}

void main() {
  var obj = changeDetails();
  obj.display();
  obj.display2();
}

class Student {
  var name = 'uzair';
  var regNo = "10474";
  void display() {
    print('Name$name');
  }

  void display2() {
    print('RegNo$regNo');
  }
}

class changeDetails implements Student {
  var name = 'Muhammad Uzair';
  String regNo = "AUIC-FALL-10474";
  void display() {
    print('Name=$name');
  }

  void display2() {
    print('RegNo=$regNo');
  }
}

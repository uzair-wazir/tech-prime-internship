void main() {
  var obj = Marks();
  obj.display(90);
}

class Student {
  var name = 'uzair';
  var regNo = 10474;
  void display(var eng) {
    print('Name=$name  \nRegNO=$regNo');
  }
}

class Marks extends Student {
  var eng;
  @override
  void display(var eng) {
    super.display(eng);
    print('Eng=$eng');
  }
}

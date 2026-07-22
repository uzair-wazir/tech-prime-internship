void main() {
  var obj = Student();
  obj.display();
}

class Student {
  var name = 'uzair';
  var age = 20;

  void display() {
    print('name $name');
    print('age $age');
  }
}

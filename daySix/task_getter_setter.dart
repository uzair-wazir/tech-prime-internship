void main() {
  var obj = Student();
  var objs = Student1();

  obj.name = 'uzair'; //default setter
  obj.regNo = 10474;

  print(obj.name); //default getter
  print(obj.regNo);
  print('');

  print('custom getter and setter');
  objs.custom = 'wazir'; //custom setter
  print(objs.custom); //custom getter
}

class Student {
  var name;
  var regNo;
}

class Student1 {
  var name;
  //custom setter
  void set custom(var name) {
    this.name = name;
  }

  //custom getter
  String get custom {
    return name;
  }
}

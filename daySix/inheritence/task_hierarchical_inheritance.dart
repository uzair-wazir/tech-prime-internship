void main() {
  var obj1 = Marks();
  var obj2 = totalMarks();
  var obj3 = Percentage();

  obj1.display_studentDetails('uzair', 10474);
  obj1.display_Marks();

  obj2.display_totalMarks();

  obj3.display_Percentage();
}

class studentDetails {
  var name;
  var regNo;
  void display_studentDetails(name, regNo) {
    print('Name=$name  \nRegNo=$regNo');
  }
}

class Marks extends studentDetails {
  var eng = 70;
  var math = 80;
  void display_Marks() {
    print('English=$eng  \nMath=$math');
  }
}

class totalMarks extends studentDetails {
  var eng = 70;
  var math = 80;
  void display_totalMarks() {
    print('Total Marks=${eng + math}');
  }
}

class Percentage extends studentDetails {
  var eng = 70;
  var math = 80;
  void display_Percentage() {
    print('Percentage= ${((eng + math) / 200) * 100}');
  }
}

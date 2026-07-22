void main() {
  var obj = Percentage();
  obj.display_studentDetails('uzair', 10474);

  obj.display_Marks();
  obj.display_totalMarks();
  obj.display_Percentage();
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

class totalMarks extends Marks {
  void display_totalMarks() {
    print('Total Marks=${eng + math}');
  }
}

class Percentage extends totalMarks {
  void display_Percentage() {
    print('Percentage= ${((eng + math) / 200) * 100}');
  }
}

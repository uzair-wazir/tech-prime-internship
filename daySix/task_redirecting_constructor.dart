void main() {
  var obj = Marks.marks();
}

class Marks {
  var eng;
  var math;

  Marks(this.eng, this.math) {
    print('eng=$eng \nmath=$math');
  }
  Marks.marks() : this(50, 60);
}

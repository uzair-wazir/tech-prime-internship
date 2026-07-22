//Functions as First-class Objects in Dart
void main() {
  student("Hi", name);
}

Function name = (String r) {
  return r;
};

void student(String a, Function n) {
  print('$a ${n("Muhammad Uzair")}');
}

//Functions as First-class Objects in Dart
void main(){
  student("Hi", identity);
}

Function identity(dynamic r){
  return r;
}

void student(String a, Function n){
  print('$a, ${n("Muhammad Uzair")}');
}
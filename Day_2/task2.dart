//Functions as First-class Objects in Dart
void main(){
var x=marks();
print (x(10,4,5));
}
Function marks(){
  Function num= (int a, int b, int c){
    return (a*b)+c;

  };
  return num;
}
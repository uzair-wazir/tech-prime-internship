//Lexical Closures in Dart
var a=0;

void main(){

print ('main func: $a');


void outer(){
  a=4;
  print ('outer func:$a');

}
outer();
demo();
}
void demo(){
  a=6;
  print('demo func:$a');
}
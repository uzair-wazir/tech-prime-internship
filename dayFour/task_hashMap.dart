import 'dart:collection';

void main(){
var map1= HashMap();
map1[1]=10;
map1[2]=30;
print(map1);
print('');


//hash map keys using for in loop
print('for in');
for(int i in map1.keys){
  print(i);
  print('');
}

//print value through forin loop
print('values');
for (int j in map1.values){
  print(j);
}
}
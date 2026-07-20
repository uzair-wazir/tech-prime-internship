//set


void main(){
Set set1={1,2,3};
print(set1);
print('');

//adding value to set
print('adding value to set');

  Set set2={};
  set2.add(1);
  set2.add(2);
  print(set2);
print('');

//empty set
print('empty set');
Set set3={};
print(set3);
print('');


//forin loop in set
print('for in loop in set');
Set set4={};
set4.add(30);
set4.add(4);
for(int i in set4){
  print(i);
}
print('');

//constant set
print('const set value');
Set set5= const{10,20,30};
print(set5);

}
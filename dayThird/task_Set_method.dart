void main(){
//simple set
print('simple set');
Set set1={1,3,4,5,6};
print(set1);
print('');


//add value to set
print('add value');
set1.add(9);
print(set1);
print('');

//add all
print('add all');
set1.addAll([0,2,7]);
print(set1);
print('');

//removing 
print('removing');
set1.remove(0);
print(set1);
print('');


//length
print('length checking');
print(set1.length);
}
void main(){
var obj=Student();
obj.name='rahul';
obj.age=20;
obj.display();


}

class Student {
  var name;
  var age;

  void display(){
  print('name $name');
  print('age $age');

  }
}
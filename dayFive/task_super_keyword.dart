void main(){
var obj = Marks();
obj.display();

}

class Student {
  var name='uzair';
 var age=20;
 var calculas =26;
  void display(){
    print('name $name');
    print('age $age');

  }
 //when we use super the values of class Student will be print
 
}
  class Marks extends Student {
    var calculas=25;
    void display(){
      print(super.calculas);
      super.display();
    }

  }

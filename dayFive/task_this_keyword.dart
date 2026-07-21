void main(){
var obj=Student();
obj.display('muhammad',21 );

}
//we use this to print the value initialized in class 
class Student{
 var name ='uzair';
    int age = 20;
  void display (var name ,int age ){
    
    print('name: ${this.name} \nage:${this.age}');
  }
}
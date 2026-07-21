void main(){
var obj=Student.detail("uzair",10474);
print('');

var objs=Student.marks(30,40);
}
class Student{
  
  Student.detail(var name, int regNo){
    print('name= $name \nregNo= $regNo');
  }
  Student.marks(int eng, int math){
    print('Eng= $eng \nmath=$math');
  }
}
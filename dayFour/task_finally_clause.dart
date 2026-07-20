void main() {
  try {
    int z = 5 ~/ 0;
    print(z);
} 
  catch (e) {
    print('cannot divide by zero. $e');
  } finally {
    print('finally clause');
    
  }
}
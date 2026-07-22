//Swap the values of two integer variables without using a third variable.
void main() {
  int a = 5;
  int b = 2;
  (a, b) = (b, a);
  print('a=$a');
  print('b=$b');
}

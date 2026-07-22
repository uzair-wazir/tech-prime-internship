//Given three numbers, print the largest one (without using if-else — just comparison logic).
void main() {
  int a = 2, b = 3, c = 3;
  int largest = (a > b) ? (a > c ? a : c) : (b > c ? b : c);
  print('Largest Number $largest');
}

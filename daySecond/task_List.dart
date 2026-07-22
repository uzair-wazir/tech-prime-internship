void main() {
  // creating list
  List a = [1, 2, 3, 4, 5];
  print(a);
  print('');
  //first index of value in list
  print('first index of value in list');
  print(a.first);
  print('');

  //last index of value in list
  print('last index of value in list');
  print(a.last);
  print('');

  //remove value from index in list
  print('remove value from index in list');
  a.removeAt(0);
  print(a);
  print('');

  //remove last value from list
  print('remove last value from list');
  a.removeLast();
  print(a);
  print('');
}

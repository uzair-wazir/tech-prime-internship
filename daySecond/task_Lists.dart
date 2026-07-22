//List in Dart
void main() {
  //if we want to store any type of value
  print('any type of value');
  List lst = [1, 2, 3];
  print(lst);
  print('');

  // if we want to store int value
  print('int value');
  List<int> lst1 = [10, 20];
  print(lst1);
  print('');

  //if we want to store string value
  print('string value');
  List<String> lst2 = ['muhammad uzair'];
  print(lst2);
  print('');

  //if we want to store double value
  print('double value');
  List<double> lst3 = [1.1, 2.3];
  print(lst3);
  print('');

  //if we want to intialize value in other line
  print('initialize value in other line');
  List lst4;
  lst4 = [2, 4, 5];
  print(lst4);
  print('');

  // if we want to print specific value
  print('print specific value');
  List lst5 = [1.2, 4, 5.5];
  print(lst5[2]);
  print('');

  //if we want to change specific value
  print('change specific value');
  List lst6 = [1.2, 5, 6.7];
  lst6[1] = 8;
  print(lst6);
  print('');

  //add value in list
  print('add value in list');
  lst6.add(5);
  print(lst6);
  print('');

  //remove value from list
  print('remove value from list');
  lst6.remove(1.2);
  print(lst6);
  print('');

  //print list with forin loop
  print('print list with forin loop');
  for (var i in lst6) {
    print(i);
  }
  print('');

  //print constant list that cannot be changed
  print('constant list that cannot be changed');
  List lst7 = const [2, 3, 4];
  print(lst7);
}

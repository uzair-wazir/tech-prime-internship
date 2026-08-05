import 'package:flutter/material.dart';

void main() {
  runApp(
    Text(
      'Hi I am Uzair',
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.blue, fontSize: 30, wordSpacing: 5),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/dayEleven/respnsive_design.dart';

void main() {
  runApp(const MyDesign());
}

class MyDesign extends StatelessWidget {
  const MyDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

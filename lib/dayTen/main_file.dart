import 'package:flutter/material.dart';
import 'package:flutter_application_1/dayTen/home_page.dart';

void main() {
  runApp(myToDoApp());
}

class myToDoApp extends StatelessWidget {
  const myToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

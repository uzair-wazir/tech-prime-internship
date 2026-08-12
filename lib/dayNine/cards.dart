import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Simple Card')),
        body: Center(
          child: Card(
            color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: Text('Hello, this is a Card!'),
            ),
          ),
        ),
      ),
    );
  }
}

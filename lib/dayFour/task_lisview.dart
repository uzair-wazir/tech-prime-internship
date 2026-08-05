import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Container(width: 350, color: Colors.deepPurple),
            Container(width: 350, color: Colors.deepPurple[400]),
            // this will not fit in the screen so we will use listview to make it scrollable
            Container(width: 350, color: Colors.deepPurple[200]),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: currentWidth < 600
          ? Colors.blueAccent[200]
          : Colors.amber,
      body: Center(child: Text(currentWidth.toString())),
    );
  }
}

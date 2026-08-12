import 'package:flutter/material.dart';

class RoomsPage extends StatelessWidget {
  RoomsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent[100],
      appBar: AppBar(title: Text('ROOMS'), backgroundColor: Colors.blue),
    );
  }
}

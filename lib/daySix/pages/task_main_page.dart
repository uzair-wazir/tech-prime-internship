import 'package:flutter/material.dart';

class TaskMainPage extends StatelessWidget {
  const TaskMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(186, 104, 200, 1),
        title: Text("COZY LIGHTS HOSTELS"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HOME'),

          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'PROFILE'),

          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'SETTING'),
        ],
      ),
    );
  }
}

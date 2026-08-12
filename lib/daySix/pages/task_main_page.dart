import 'package:flutter/material.dart';
import 'home_page.dart';
import 'setting_page.dart';
import 'room_page.dart';

class TaskMainPage extends StatefulWidget {
  TaskMainPage({super.key});

  @override
  State<TaskMainPage> createState() => _TaskMainPageState();
}

class _TaskMainPageState extends State<TaskMainPage> {
  //this keeps track of the current page
  int _selectedIndex = 0;

  void _navigationBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //the pages we have in our app
  final List _pages = [HomePage(), RoomPage(), SettingPage()];
  final List<String> _titles = const ['COZY LIGHTS HOSTEL', 'ROOM', 'SETTING'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(186, 104, 200, 1),
        title: Text(_titles[_selectedIndex]), // ← use the list here
      ),
      body: _pages[_selectedIndex], //display the current page
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigationBottomBar,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HOME'),

          BottomNavigationBarItem(icon: Icon(Icons.room), label: 'ROOM'),

          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'SETTING'),
        ],
      ),
    );
  }
}

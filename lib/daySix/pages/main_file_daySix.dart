import 'package:flutter/material.dart';
import 'home_page.dart';
import 'room_page.dart';
import 'setting_page.dart';
import 'task_main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TaskMainPage(),
      routes: {
        '/taskMainPage': (context) => TaskMainPage(),
        '/taskHomePage': (context) => HomePage(),
        '/taskProfilePage': (context) => RoomPage(),
        '/taskSettingPage': (context) => SettingPage(),
      },
    );
  }
}

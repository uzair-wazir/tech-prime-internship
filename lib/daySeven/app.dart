import 'package:flutter/material.dart';
import 'package:flutter_application_1/daySeven/home_page.dart';
import 'package:flutter_application_1/daySeven/report_page.dart';
import 'package:flutter_application_1/daySeven/rooms_page.dart';
import 'package:flutter_application_1/daySeven/student_reportPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        '/roompage': (context) => RoomsPage(),
        '/reportpage': (context) => ReportPage(),
        '/studentreportpage': (context) => StudentReportpage(),
      },
    );
  }
}

import 'package:flutter/material.dart';

class StudentReportpage extends StatelessWidget {
  StudentReportpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent[100],
      appBar: AppBar(
        title: Text('STUDENT REPORTS'),
        backgroundColor: Colors.blue,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, title: Text('MY APP')),
      drawer: Drawer(
        backgroundColor: Colors.blue[200],
        child: Column(
          children: [
            DrawerHeader(
              child: Align(
                alignment: Alignment.topLeft,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.close),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.bed),
              title: Text('ROOMS'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/roompage');
              },
            ),
            ListTile(
              leading: Icon(Icons.report),
              title: Text('REPORT'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/reportpage');
              },
            ),

            ListTile(
              leading: Icon(Icons.person),
              title: Text('STUDENT DETAILS'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/studentreportpage');
              },
            ),
            const Spacer(),
            ListTile(leading: Icon(Icons.logout), title: Text('LOGOUT')),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

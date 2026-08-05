import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(186, 104, 200, 1),
        title: Text("COZY LIGHTS HOSTELS"),
      ),

      drawer: Drawer(
        backgroundColor: Colors.purple[100],

        child: Column(
          children: [
            DrawerHeader(
              child: Align(
                alignment: Alignment.topLeft,
                child: Icon(Icons.close),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("HOME"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/homepage');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("SETTINGS"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/settingpage');
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<TodoPage> {
  //text editing controller to get access to what the user typed
  TextEditingController myControllerGmail = TextEditingController();
  TextEditingController myControllerPassword = TextEditingController();
  //greetuser methode
  void greetUser() {
    print(myControllerGmail.text);
    print(myControllerPassword.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //textfield
              TextField(
                controller: myControllerGmail,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Add Gmail',
                ),
              ),
              SizedBox(height: 12),
              TextField(
                controller: myControllerPassword,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Add Password',
                ),
              ),
              ElevatedButton(onPressed: greetUser, child: Text('Login')),
            ],
          ),
        ),
      ),
    );
  }
}

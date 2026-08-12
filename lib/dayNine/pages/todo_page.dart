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
      appBar: AppBar(
        title: Text("COZY LIGHTS HOSTEL"),
        backgroundColor: Colors.pinkAccent[200],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment
                    .centerLeft, // change to .center, .centerRight, etc.
                child: Text(
                  'LOGIN',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),

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
              SizedBox(height: 20),
              SizedBox(
                width: 400, // set your desired width
                height: 50, // set your desired height
                child: ElevatedButton(
                  onPressed: greetUser,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pinkAccent[200],
                    shadowColor: Colors.pinkAccent[200],
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

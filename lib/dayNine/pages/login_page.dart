import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //text editing controller to get access to what the user typed
  TextEditingController myControllerGmail = TextEditingController();
  TextEditingController myControllerPassword = TextEditingController();
  //greetuser methode
  void details() {
    if (kDebugMode) {
      print(myControllerGmail.text);
      print(myControllerPassword.text);
    }
  }

  bool showHidepwd = false;

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
              Image.asset('image/logo.jpeg', height: 180, fit: BoxFit.contain),
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
                obscureText: showHidepwd,
                controller: myControllerPassword,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        showHidepwd = !showHidepwd;
                      });
                    },
                    icon: Icon(
                      showHidepwd ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                  border: OutlineInputBorder(),
                  hintText: 'Add Password',
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 400, // set your desired width
                height: 50, // set your desired height
                child: ElevatedButton(
                  onPressed: details,
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

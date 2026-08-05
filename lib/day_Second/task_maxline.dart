import 'package:flutter/material.dart';

void main() {
  runApp(
    //this center was used to display the hello in the center of display
    Center(
      child: Text(
        'hello my name is uzair i am software engineering student my reg no is 10474',
        textDirection: TextDirection.ltr,

        style: TextStyle(color: Colors.green, fontSize: 20),
        textScaleFactor: 3,

        maxLines: 4,
      ),
    ),
  );
}

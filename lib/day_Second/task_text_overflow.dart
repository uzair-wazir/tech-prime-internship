import 'package:flutter/material.dart';

void main() {
  runApp(
    //this center was used to display the hello in the center of display
    Center(
      child: Text(
        'hello my name is uzair i am software engineering student my reg no is 10474',
        textDirection: TextDirection.ltr,

        textAlign: TextAlign.left, //this center is used to make it in middle
        style: TextStyle(color: Colors.green, fontSize: 20),
        overflow: TextOverflow.ellipsis,
      ),
    ),
  );
}

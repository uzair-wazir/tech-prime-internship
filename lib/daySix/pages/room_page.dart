import 'package:flutter/material.dart';

class RoomPage extends StatelessWidget {
  const RoomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Card(
            color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('ROOM 1', textAlign: TextAlign.start),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

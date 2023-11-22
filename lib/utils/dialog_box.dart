import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        backgroundColor: Colors.yellow,
        title: const Text('Add Task'),
        content: Container(
            height: 120,
            child: const Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Task Name',
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            )));
  }
}

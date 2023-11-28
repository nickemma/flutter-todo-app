import 'package:flutter/material.dart';
import 'package:weather_app/utils/button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  final VoidCallback? onSave;
  final VoidCallback? onCancel;

  const DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        backgroundColor: Colors.yellow,
        title: const Text('Add Task'),
        content: Container(
            height: 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextField(
                  controller: controller,
                  decoration: const InputDecoration(
                    hintText: 'Add a new task',
                    border: OutlineInputBorder(),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MyButton(text: 'Save', onPressed: onSave),
                    const SizedBox(width: 8),
                    MyButton(text: 'Cancel', onPressed: onCancel),
                  ],
                ),
              ],
            )));
  }
}

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TaskTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

  TaskTile(
      {super.key,
      required this.taskName,
      this.taskCompleted = false,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(children: [
          Checkbox(
              value: taskCompleted,
              onChanged: onChanged,
              activeColor: Colors.black),
          Text(
            taskName,
            style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                decoration: taskCompleted
                    ? TextDecoration.lineThrough
                    : TextDecoration.none),
          ),
        ]),
      ),
    );
  }
}

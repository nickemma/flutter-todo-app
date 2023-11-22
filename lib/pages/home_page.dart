import 'package:flutter/material.dart';

import '../utils/task_tile.dart';
import '../utils/dialog_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // create the list of tasks to scaffold the UI

  List tasks = [
    ['Join LazyCoders', false],
    ['Learn Java', false],
  ];

  // create the function to toggle the tasks to the list
  void toggleTask(bool? value, int index) {
    setState(() {
      tasks[index][1] = !tasks[index][1];
    });
  }

  // create the function to add tasks to the list
  void createTask() {
    showDialog(
        context: context,
        builder: (context) {
          return const DialogBox();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow[200],
        appBar: AppBar(
          title: const Center(child: Text('Todo List')),
          elevation: 0,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: createTask,
          child: const Icon(Icons.add),
        ),
        body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return TaskTile(
              taskName: tasks[index][0],
              taskCompleted: tasks[index][1],
              onChanged: (value) => toggleTask(value, index),
            );
          },
        ));
  }
}

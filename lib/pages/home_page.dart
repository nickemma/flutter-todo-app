import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../utils/task_tile.dart';
import '../utils/dialog_box.dart';
import '../db/database.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // reference to hive database
  final _myBox = Hive.box('myBox');
  Database db = Database();

  @override
  void initState() {
    if (_myBox.get('tasks') == null) {
      db.initialData();
    } else {
      db.loadData();
    }
    super.initState();
  }

  // text controller for the text field in the dialog box
  final _controller = TextEditingController();

  // create the function to toggle the tasks to the list
  void toggleTask(bool? value, int index) {
    setState(() {
      db.tasks[index][1] = !db.tasks[index][1];
    });
    db.updateData();
  }

  void addNewTask() {
    setState(() {
      db.tasks.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.pop(context);
    db.updateData();
  }

  // create the function to add tasks to the list
  void createTask() {
    showDialog(
        context: context,
        builder: (context) {
          return DialogBox(
            controller: _controller,
            onSave: addNewTask,
            onCancel: () => Navigator.pop(context),
          );
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
              taskName: db.tasks[index][0],
              taskCompleted: db.tasks[index][1],
              onChanged: (value) => toggleTask(value, index),
              deleteTask: (context) {
                setState(() {
                  db.tasks.removeAt(index);
                });
                db.updateData();
              },
            );
          },
        ));
  }
}

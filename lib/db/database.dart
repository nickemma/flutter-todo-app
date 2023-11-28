import 'package:hive_flutter/hive_flutter.dart';

class Database {
  List tasks = [];
  // reference to hive database
  final _myBox = Hive.box('myBox');

  // load initial data from hive database
  void initialData() {
    tasks = [
      ['join the meeting', false],
    ];
  }

  // load data from hive database
  void loadData() {
    tasks = _myBox.get('tasks');
  }

  // update data in hive database
  void updateData() {
    _myBox.put('tasks', tasks);
  }
}

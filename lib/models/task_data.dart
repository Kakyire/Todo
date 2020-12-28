import 'package:flutter/cupertino.dart';
import 'package:todo/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [];

  void addNewTask(String newTask) {
    _tasks.add(Task(taskName: newTask));
    notifyListeners();
  }

  void isChecked(int index) {
    _tasks[index].toggleTaskDone();
    notifyListeners();
  }

  int get length {
    return _tasks.length;
  }

  List get task {
    return _tasks;
  }
}

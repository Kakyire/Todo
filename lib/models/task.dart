class Task {
  final String taskName;
  bool isDone;

  Task({this.taskName, this.isDone = false});

  void toggleTaskDone() => isDone = !isDone;
}

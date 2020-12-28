import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/models/task.dart';
import 'package:todo/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  TaskList(this.tasks);

  final List<Task> tasks;

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  Widget listViewBuild() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            taskTitle: widget.tasks[index].taskName,
            isChecked: widget.tasks[index].isDone,
            toggleCheckBox: (value) {
              setState(() {
                widget.tasks[index].toggleTaskDone();
              });
            },
          );
        },
        itemCount: widget.tasks.length,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return listViewBuild();
  }
}

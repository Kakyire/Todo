import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/task_data.dart';
import 'package:todo/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  Widget listViewBuild() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Consumer<TaskData>(
        builder: (context, taskData, child) {
          return ListView.builder(
            itemBuilder: (context, index) {
              return TaskTile(
                taskTitle: taskData.task[index].taskName,
                isChecked: taskData.task[index].isDone,
                toggleCheckBox: (value) {
                  Provider.of<TaskData>(
                    context,
                    listen: false,
                  ).isChecked(index);
                },
              );
            },
            itemCount: taskData.length,
          );
        },
        // child: ListView.builder(
        //   itemBuilder: (context, index) {
        //     return TaskTile(
        //       taskTitle: Provider.of<TaskData>(context).task()[index].taskName,
        //       isChecked: Provider.of<TaskData>(context).task()[index].isDone,
        //       toggleCheckBox: (value) {
        //         Provider.of<TaskData>(
        //           context,
        //           listen: false,
        //         ).isChecked(index);
        //       },
        //     );
        //   },
        //   itemCount: Provider.of<TaskData>(context).length,
        // ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return listViewBuild();
  }
}

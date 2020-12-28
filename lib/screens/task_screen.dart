import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/task_data.dart';
import 'package:todo/utils/constants.dart';
import 'package:todo/widgets/task_listview.dart';

import 'add_task_screen.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => AddTaskScreen(),
          );
        },
        backgroundColor: Colors.redAccent,
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.red[400],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: 30.0,
              top: 50.0,
              bottom: 30.0,
              right: 30.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 40,
                  child: Icon(
                    Icons.list,
                    size: 40,
                    color: Colors.redAccent,
                  ),
                  backgroundColor: Colors.white,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Todo',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '${Provider.of<TaskData>(context).length} Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: kCircleRadius,
                topRight: kCircleRadius,
              ),
            ),
            child: TaskList(),
          )),
        ],
      ),
    );
  }
}

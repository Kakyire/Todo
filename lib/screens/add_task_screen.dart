import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/task_data.dart';
import 'package:todo/utils/constants.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String _taskName;

    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: kCircleRadius,
              topRight: kCircleRadius,
            )),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 30.0,
                ),
              ),
              TextField(
                onChanged: (value) {
                  _taskName = value;
                },
                textAlign: TextAlign.center,
                autofocus: true,
                decoration: InputDecoration(
                  // errorText: _taskName == null ? errorMessage : null,
                  hintText: 'Enter task',
                ),
              ),
              FlatButton(
                color: Colors.redAccent,
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  if (_taskName != null) {
                    Provider.of<TaskData>(
                      context,
                      listen: false,
                    ).addNewTask(_taskName);
                    // newAddedTask(_taskName);
                    Navigator.pop(context);
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

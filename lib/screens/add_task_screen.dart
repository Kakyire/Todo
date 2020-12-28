import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/utils/constants.dart';

class AddTaskScreen extends StatelessWidget {
  final Function newAddedTask;

  AddTaskScreen(this.newAddedTask);

  @override
  Widget build(BuildContext context) {
    String _taskName;
    String errorMessage = 'Please enter task';

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
                    newAddedTask(_taskName);
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

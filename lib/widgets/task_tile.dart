import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({
    this.isChecked,
    this.toggleCheckBox,
    this.taskTitle,
  });

  final bool isChecked;
  final Function toggleCheckBox;
  final String taskTitle;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.redAccent,
        onChanged: toggleCheckBox //{

        //}
        ,
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool isChecked;
  final Function stateChangeCallback;

  TaskCheckBox({this.isChecked, this.stateChangeCallback});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      activeColor: Colors.redAccent,
      onChanged: stateChangeCallback //{
      // setState(() {
      //   isChecked = value;
      // });
      //}
      ,
    );
  }
}

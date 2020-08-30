import 'package:flutter/material.dart';
class TaskTile extends StatelessWidget {

  final String taskName;
  final bool taskCompleted;
  final Function checkboxCallBack;

  TaskTile({this.taskName,this.taskCompleted,this.checkboxCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:Text(taskName,
        style: TextStyle(
            fontSize: 15.0,
            decoration: taskCompleted ? TextDecoration.lineThrough : null
        ),
      ),
      trailing:  Checkbox(
        onChanged:checkboxCallBack,
        value: taskCompleted,
        checkColor: Colors.lightBlueAccent,
        activeColor: Colors.white,
      ),
    );
  }
}


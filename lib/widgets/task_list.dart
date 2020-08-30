import 'package:flutter/material.dart';
import 'package:flutter_state_management/Model/task.dart';
import 'package:flutter_state_management/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  final List<Task> tasks;
  final Function checkBoxCallBack;
  TasksList({this.tasks , this.checkBoxCallBack});
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (BuildContext context , int index) {
          return Padding(
              padding: EdgeInsets.only(left:60.0 , top:20.0),
              child: TaskTile(
                taskName: tasks[index].name,
                taskCompleted: tasks[index].isDone,
                checkboxCallBack: this.checkBoxCallBack
              )
          );
        },
        separatorBuilder: (BuildContext context , int index) {
          return SizedBox(height: 0.0,);
        },
        itemCount: tasks.length);
  }
}

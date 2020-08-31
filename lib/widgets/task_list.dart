import 'package:flutter/material.dart';
import 'package:flutter_state_management/Model/task.dart';
import 'package:flutter_state_management/Model/task_data.dart';
import 'package:flutter_state_management/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context , taskData , child) {
        return ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                  padding: EdgeInsets.only(left: 60.0, top: 20.0),
                  child: TaskTile(
                      taskName: taskData.myTasks[index].name,
                      taskCompleted: taskData.myTasks[index].isDone,
                      checkboxCallBack: (value) {
                        taskData.changeTaskDone(index);
                      },
                  )
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(height: 0.0,);
            },
            itemCount: taskData.myTasks.length);
      }
      );
  }
}

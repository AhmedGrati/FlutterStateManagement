import 'package:flutter/material.dart';
import 'package:flutter_state_management/Model/task.dart';
import 'package:flutter_state_management/widgets/task_tile.dart';
 class TasksList extends StatefulWidget {

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name:'Buy Milk' ),
    Task(name:'Buy Eggs' ),
    Task(name:'Buy Detergent' ),
  ];
   @override
   Widget build(BuildContext context) {
     return ListView.separated(
         itemBuilder: (BuildContext context , int index) {
           return Padding(
               padding: EdgeInsets.only(left:60.0 , top:20.0),
               child: TaskTile(
                 taskName: tasks[index].name,
                 taskCompleted: tasks[index].isDone,
                 checkboxCallBack: (value) {
                   setState(() {
                     tasks[index].toggleDone();
                   });
                 },
               )
           );
         },
         separatorBuilder: (BuildContext context , int index) {
           return SizedBox(height: 0.0,);
         },
         itemCount: tasks.length);
   }
}

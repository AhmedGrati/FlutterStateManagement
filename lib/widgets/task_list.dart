import 'package:flutter/material.dart';
import 'package:flutter_state_management/widgets/task_tile.dart';
 class TasksList extends StatelessWidget {

   final List<String> tasks;

   TasksList({
     @required this.tasks
    });

   @override
   Widget build(BuildContext context) {
     return ListView.separated(
         itemBuilder: (BuildContext context , int index) {
           return Padding(
               padding: EdgeInsets.only(left:60.0 , top:20.0),
               child: TaskTile(title: tasks[index],)
           );
         },
         separatorBuilder: (BuildContext context , int index) {
           return SizedBox(height: 0.0,);
         },
         itemCount: tasks.length);
   }
 }

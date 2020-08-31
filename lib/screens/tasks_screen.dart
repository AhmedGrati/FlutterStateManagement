import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_management/Model/task_data.dart';
import 'package:provider/provider.dart';
import 'package:flutter_state_management/screens/bottom_modal.dart';
import 'package:flutter_state_management/widgets/task_list.dart';
class TasksScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(context: context, builder:(context) => BottomModal()
          );
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left:60.0 , top: 30.0 , right: 30.0 , bottom: 30.0 ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  radius: 20.0,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list,
                    color: Colors.lightBlue,
                  ),
                ),
                SizedBox(height: 10.0,),
                Text('Tododey',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 10.0,),
                Text('${Provider.of<TaskData>(context).myTasks.length} Tasks' ,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: 300.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0) , topRight: Radius.circular(20.0))
              ),
              child: TasksList()
            ),
          ),
        ],
      ),
    );
  }
}

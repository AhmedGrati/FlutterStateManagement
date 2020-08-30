import 'package:flutter/material.dart';
import 'package:flutter_state_management/Model/task.dart';

class BottomModal extends StatelessWidget {

  final Function(String) pressButtonMethod;
  BottomModal({this.pressButtonMethod});

  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0),
                topLeft: Radius.circular(20.0)
            ),
            color: Colors.white
        ),
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text('Add Task' ,
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.0,),
              TextField(
                decoration: InputDecoration(
                  focusColor: Colors.lightBlueAccent,
                ),
                onChanged: (value) {
                  newTaskTitle = value;
                },
              ),
              SizedBox(height: 20.0,),
              FlatButton(
                onPressed:() {
                  this.pressButtonMethod(newTaskTitle);
                },
                color: Colors.lightBlueAccent,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Add' , style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0
                    ),
                  ),
                ),
                autofocus: true,
              )
            ],
          ),
        ),
      ),
    );
  }
}

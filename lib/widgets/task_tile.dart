import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String title;
  TaskTile({
    this.title
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:Text(title ,
        style: TextStyle(
          fontSize: 15.0,
        ),
      ),
      trailing:  Checkbox(
        onChanged: (value) {
        },
        value: false,
      ),
    );
  }
}

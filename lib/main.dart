import 'package:flutter/material.dart';
import 'package:flutter_state_management/Model/task_data.dart';
import 'package:flutter_state_management/screens/tasks_screen.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: TasksScreen(),
        ),
      ),
    );
  }
}


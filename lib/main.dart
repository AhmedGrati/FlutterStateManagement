import 'package:flutter/material.dart';
import 'package:flutter_state_management/screens/tasks_screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: TasksScreen(),
      ),
    );
  }
}


import 'package:flutter/cupertino.dart';
import 'package:flutter_state_management/Model/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> myTasks = [
    Task(name:'Buy Milk' ),
    Task(name:'Buy Eggs' ),
    Task(name:'Buy Detergent' ),
  ];

  void changeTaskDone(int index) {
    myTasks[index].toggleDone();
    notifyListeners();
  }

  void addTask(String newTaskName) {
    myTasks.add(Task(name: newTaskName));
    notifyListeners();
  }
}
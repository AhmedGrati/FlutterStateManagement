class Task {
  bool isDone;
  String name;
  Task({this.isDone = false , this.name});

  void toggleDone() {
    this.isDone = !this.isDone;
  }
}
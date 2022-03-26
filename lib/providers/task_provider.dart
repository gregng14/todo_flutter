import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:todo_flutter/models/task.dart';

class TaskProvider extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: 'Buy Bread'),
    Task(name: 'Buy Eggs'),
    Task(name: 'Buy Milk'),
  ];

  void addTask(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  void removeTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

  void toggleTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  int get size => _tasks.length;
}
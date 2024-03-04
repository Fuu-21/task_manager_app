import 'package:flutter/cupertino.dart';
import 'package:task_manager_app/task.dart';
import 'package:flutter/material.dart';

class TaskProvider extends ChangeNotifier{
  List<Task> _tasks = [];
  List<Task> get tasks => _tasks;

  void addTask(Task task){
    _tasks.add(task);
    notifyListeners();
  }

  void toggleTaskCompletion(int index){
    _tasks[index].isCompleted = !_tasks[index].isCompleted;
    notifyListeners();
  }

  void deleteTask(int index){
    _tasks.removeAt(index);
    notifyListeners();
  }
}
import 'dart:ffi';

import 'package:flutter/cupertino.dart';

class Task{
  final String title;
  bool isCompleted;
  Task({required this.title, this.isCompleted = false});
}
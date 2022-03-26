import 'package:flutter/material.dart';
import 'package:todo_flutter/models/task.dart';

class TaskTile extends StatelessWidget {
  final Task task;
  final void Function(bool?) checkboxCallback;

  const TaskTile(this.task, {required this.checkboxCallback, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        task.name,
        style: TextStyle(
          decoration: task.isDone ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: task.isDone,
        onChanged: checkboxCallback,
      ),
    );
  }
}

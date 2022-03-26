import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final void Function(String) onAddTask;
  const AddTaskScreen({Key? key, required this.onAddTask}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String taskName = '';
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(
            top: 20.0,
            left: 20.0,
            right: 20.0,
            bottom: MediaQuery.of(context).viewInsets.bottom),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onEditingComplete: () {
                onAddTask(taskName);
              },
              onChanged: (value) {
                taskName = value;
              },
            ),
            TextButton(
              onPressed: () {
                onAddTask(taskName);
              },
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.lightBlueAccent,
              ),
              child: const Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}

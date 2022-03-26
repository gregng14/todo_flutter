import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/models/task.dart';
import 'package:todo_flutter/providers/task_provider.dart';
import 'package:todo_flutter/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(
      builder: (context, taskProvider, child) {
        List<Task> tasks = taskProvider.tasks;
        return ListView.builder(
          itemBuilder: (context, index) => TaskTile(
            tasks[index],
            checkboxCallback: (bool? checkboxState) {
              taskProvider.toggleTask(tasks[index]);
            },
            longPressCallback: () {
              taskProvider.removeTask(tasks[index]);
            },
          ),
          itemCount: taskProvider.size,
        );
      },
    );
  }
}

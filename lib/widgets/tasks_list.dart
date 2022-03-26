import 'package:flutter/cupertino.dart';
import 'package:todo_flutter/models/task.dart';
import 'package:todo_flutter/widgets/task_tile.dart';

class TasksList extends StatefulWidget {

  final List<Task> tasks;

  const TasksList({
    required this.tasks,
    Key? key,
  }) : super(key: key);

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    List<Task> tasks = widget.tasks;
    return ListView.builder(
      itemBuilder: (context, index) => TaskTile(
        tasks[index],
        checkboxCallback: (bool? checkboxState) {
          setState(() {
            tasks[index].toggleDone();
          });
        },
      ),
      itemCount: tasks.length,
    );
  }
}

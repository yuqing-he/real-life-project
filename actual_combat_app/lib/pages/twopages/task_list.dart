import 'package:flutter/material.dart';
import 'package:actual_combat_app/models/tasks.dart';
import 'package:actual_combat_app/pages/twopages/task_tile.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;

  const TaskList({this.tasks});

  @override
  _TaskListState createState() => _TaskListState();
}

// task_list 添加回调方法，设置CheckBox的状态

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          title: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          checkboxCallback: (checkboxState) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String title;
  final bool isChecked;
  final Function checkboxCallback;

  TaskTile({this.isChecked, this.title, this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          title.toString(),
          style: TextStyle(
              color: isChecked ? Colors.grey : Colors.black,
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlue,
          value: isChecked,
          onChanged: checkboxCallback,
//          checkBoxState: isChecked,
//          toggleCheckBoxState:
        ));
  }
}

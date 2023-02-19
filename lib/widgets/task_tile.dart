import 'package:flutter/material.dart';

import '../models/task.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({super.key, required this.task});

  final Task task;

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      
      title: Text(
        widget.task.title,
        style: TextStyle(
            decoration: widget.task.isDone ? TextDecoration.lineThrough : null),
      ),
      trailing: MyCheckBox(
        isChecked: widget.task.isDone,
        fun: (v) {
          setState(() {
            widget.task.toggleTask();
          });
        },
      ),
    );
  }
}

class MyText extends StatelessWidget {
  const MyText({
    super.key,
    required this.isChecked,
  });

  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    return Text(
      'test',
      style:
          TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null),
    );
  }
}

class MyCheckBox extends StatelessWidget {
  final bool isChecked;
  final Function(bool?)? fun;

  const MyCheckBox({super.key, required this.isChecked, this.fun});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      onChanged: fun,
      value: isChecked,
    );
  }
}

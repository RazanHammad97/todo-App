import 'package:flutter/material.dart';

import '../models/task.dart';


class TaskTile extends StatefulWidget {
  const TaskTile({
    super.key, required this.task
  });
final Task task;
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {

    return ListTile(
      leading: const Text('1'),
      title: Text(
        widget.task.title,
        style:
        TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: MyCheckBox(
        isChecked: isChecked,
        fun: (v) {
          setState(() {
            isChecked = v!;
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

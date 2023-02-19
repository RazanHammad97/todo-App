import 'package:flutter/material.dart';
import 'package:todoapp/widgets/task_tile.dart';

import '../models/task.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
  List<Task> tasks=[
    Task(title: "test"),
    Task(title: "test"),
    Task(title: "test"),
    Task(title: "test"),
  ];

    return Expanded(
      child: SizedBox(
        height: double.maxFinite,
        child: ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (context,index){
            return TaskTile(task:  tasks[index],);
          },

        ),
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:todoapp/widgets/task_tile.dart';

import '../models/task.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key,required this.tasks});
final List<Task> tasks;
  @override
  Widget build(BuildContext context) {


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



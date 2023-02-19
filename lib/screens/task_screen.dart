import 'package:flutter/material.dart';

import '../models/task.dart';
import '../widgets/tasks_list.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Task> tasks=[
    Task(title: "test"),
    Task(title: "test"),
    Task(title: "test"),
    Task(title: "test"),
  ];

  String newTask = "";
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Column(
              children:  [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.list,
                      color: Colors.blue,
                    ),
                  ),
                ),
                Text(
                  "To Do",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white),
                ),
                Text(
                  '${tasks.length} tasks',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(
                          15,
                        ),
                        topLeft: Radius.circular(15))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [TaskList(tasks: tasks,)],
                )),
          )
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12))),
              context: context,
              builder: (BuildContext context) {
                return Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        "Add Task",
                        style: TextStyle(color: Colors.blue, fontSize: 25),
                      ),
                    ),
                     TextField(
                      onChanged: (value){

                          newTask=value;

                      },
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12, right: 12),
                      child: SizedBox(
                        width: double.maxFinite,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                tasks.add(Task(title: newTask));
                              });
                              Navigator.pop(context);

                            }, child: const Text("Add Task")),
                      ),
                    )
                  ],
                );
              });
        },
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'To Do App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //smainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Column(

              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: CircleAvatar(
                    child: Icon(
                      Icons.list,
                      color: Colors.blue,
                    ),
                    backgroundColor: Colors.white,
                  ),
                ),
                Text(
                  "To Do",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25, color: Colors.white),
                ),
                Text(
                  "3 tasks",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                        title: Text("Task1"),
                        trailing: Checkbox(
                          onChanged: (bool? value) {},
                          value: false,
                        )),
                    ListTile(
                        title: Text("Task1"),
                        trailing: Checkbox(
                          onChanged: (bool? value) {},
                          value: false,
                        )),
                    ListTile(
                        title: Text("Task1"),
                        trailing: Checkbox(
                          onChanged: (bool? value) {},
                          value: false,
                        )),
                  ],
                )),
          )
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        "Add Task",
                        style: TextStyle(color: Colors.blue,
                        fontSize: 25),
                      ),
                    ),
                    TextField(),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12,right: 12),
                      child: SizedBox(
                        width: double.maxFinite,
                        child: ElevatedButton(
                            onPressed: () {}, child: Text("Add Task")),
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

import 'package:flutter/material.dart';
import 'package:learnflutter/beginningapdevwithflutter/TodoApp/todo_tile.dart';

class TodoMyApp extends StatefulWidget {
  const TodoMyApp({super.key});

  @override
  TodoMyAppState createState() => TodoMyAppState();
}

class TodoMyAppState extends State<TodoMyApp> {
  List toDoList = [
    ['First Task', false],
    ['Second Task', true],
  ];

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: toDoList[index][0],
            taskCompleted: toDoList[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
          );
        });
  }
}

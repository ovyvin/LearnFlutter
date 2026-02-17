import 'package:flutter/material.dart';
import 'package:learnflutter/beginningapdevwithflutter/TodoApp/todo_tile.dart';

class TodoMyApp extends StatefulWidget {
  const TodoMyApp({super.key});

  @override
  TodoMyAppState createState() => TodoMyAppState();
}

class TodoMyAppState extends State<TodoMyApp> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ToDoTile(
          taskName: 'FirstApp',
          taskCompleted: false,
          onChanged: (p0) {},
        ),
        ToDoTile(
          taskName: 'FirstApp',
          taskCompleted: false,
          onChanged: (p0) {},
        ),
        ToDoTile(
          taskName: 'FirstApp',
          taskCompleted: false,
          onChanged: (p0) {},
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:learnflutter/beginningapdevwithflutter/TodoApp/todo_tile.dart';
import 'package:learnflutter/beginningapdevwithflutter/TodoApp/return_alert.dart';

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

  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        title: Text(
          'TODO APP',
          textAlign: TextAlign.center,
          style: TextStyle(
            //fontWeight: FontWeight.bold,
            fontFamily: 'Pokemon',
            color: Color(0xffb42920),
          ),
        ),
        backgroundColor: Colors.yellow[600],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
          itemCount: toDoList.length,
          itemBuilder: (context, index) {
            return ToDoTile(
              taskName: toDoList[index][0],
              taskCompleted: toDoList[index][1],
              onChanged: (value) => checkBoxChanged(value, index),
            );
          }),
    );
  }
}

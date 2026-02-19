import 'package:flutter/material.dart';
import 'package:learnflutter/beginningapdevwithflutter/TodoApp/todo_tile.dart';
import 'package:learnflutter/beginningapdevwithflutter/TodoApp/return_alert.dart';
import 'package:learnflutter/beginningapdevwithflutter/TodoApp/my_button.dart';

class TodoMyApp extends StatefulWidget {
  const TodoMyApp({super.key});

  @override
  TodoMyAppState createState() => TodoMyAppState();
}

class TodoMyAppState extends State<TodoMyApp> {
  //text controller
  final _controller = TextEditingController();

  List toDoList = [
    ['First Task', false],
    ['Second Task', true],
  ];

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  //save new task
  void saveNewTask() {
    setState(() {
      toDoList.add([_controller.text, false]);
    });
  }

  //create new task
  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          onSave: saveNewTask,
          onClose: () => Navigator.of(context).pop(),
        );
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

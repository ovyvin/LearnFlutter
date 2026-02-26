import 'package:flutter/material.dart';
import 'package:learnflutter/main.dart';
import 'package:learnflutter/beginningapdevwithflutter/todoapp2/todotile2.dart';
import 'package:learnflutter/beginningapdevwithflutter/todoapp2/dialogbox.dart';

class TodoMyApp extends StatefulWidget {
  @override
  _TodoMyAppState createState() => _TodoMyAppState();
}

class _TodoMyAppState extends State<TodoMyApp> {
  bool checkBoxValue = false;
  Function(bool?)? onChanged;
  List itemsToShow = [
    ['First Task', false],
    ['Second Task', false],
  ];

  void onChangedValue(bool? value, int index) {
    setState(() {
      itemsToShow[index][1] = !itemsToShow[index][1];
    });
  }

  void createNewTask() {
    showDialog(
        context: context,
        builder: (context) {
          return DialogBox();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        centerTitle: true, //set the title to the center of the appBar
        title: Text(
          'To Do',
          //textAlign: TextAlign.center, // doesn't work in appBar
          style: TextStyle(
            fontFamily: 'Pokemon',
            color: Color(0xffb42920),
          ),
        ),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: itemsToShow.length,
        itemBuilder: (context, index) {
          return ToDoTile2(
              taskValue: itemsToShow[index][0],
              checkBoxStatus: itemsToShow[index][1],
              onChanged: (value) => onChangedValue(value, index));
        },
      ),
    );
  }
}

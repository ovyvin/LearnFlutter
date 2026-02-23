import 'package:hive_flutter/hive_flutter.dart';
import 'package:learnflutter/beginningapdevwithflutter/todoapp2/todoapp2.dart';
//import 'package:learnflutter/beginningapdevwithflutter/TodoApp/todo_tile.dart';
import 'package:flutter/material.dart';

void main() async {
  // //initialize HIVE
  // await Hive.initFlutter();

  // //open box
  // var box = await Hive.openBox('myBox');

  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoMyApp(),
    );
  }
}

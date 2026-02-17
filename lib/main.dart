import 'package:hive_flutter/hive_flutter.dart';
import 'package:learnflutter/beginningapdevwithflutter/TodoApp/todoapp.dart';
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
      home: Scaffold(
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
        body: TodoMyApp(),
      ),
    );
  }
}

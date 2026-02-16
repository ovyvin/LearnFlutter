import 'package:flutter/material.dart';

class TodoMyApp extends StatefulWidget {
  @override
  TodoMyAppState createState() => TodoMyAppState();
}

class TodoMyAppState extends State<TodoMyApp> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Merge', style: TextStyle(color: Colors.red)),
      ],
    );
  }
}

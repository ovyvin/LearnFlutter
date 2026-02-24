import 'package:flutter/material.dart';
import 'package:learnflutter/main.dart';

class TodoMyApp extends StatefulWidget {
  @override
  _TodoMyAppState createState() => _TodoMyAppState();
}

class _TodoMyAppState extends State<TodoMyApp> {
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
    );
  }
}

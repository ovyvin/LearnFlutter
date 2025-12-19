import 'package:learnflutter/booklearn1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff09508b),
        //primarySwatch: Colors.deepOrange,
        //primarySwatch: Colors.yellow,
        primarySwatch: Colors.lightGreen,
        canvasColor: Colors.lightGreen.shade400,
      ),
      home: Booklearn1(),
    );
  }
}

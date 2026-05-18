import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:learnflutter/beginningapdevwithflutter/Destiny2/storypage.dart';

void main() async {
  // //initialize HIVE
  await Hive.initFlutter();

  // //open box
  // var box = await Hive.openBox('myBox');

  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Destiny',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: StoryPage(),
    );
  }
}

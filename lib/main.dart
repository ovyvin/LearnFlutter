import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
//import 'package:learnflutter/beginningapdevwithflutter/Calculator2/Pages/inputPage.dart';
import 'package:learnflutter/beginningapdevwithflutter/Clima/screens/city_screen.dart';
import 'package:learnflutter/beginningapdevwithflutter/Clima/screens/location_screen.dart';
import 'package:learnflutter/beginningapdevwithflutter/Clima/screens/loading_screen.dart';
import 'package:learnflutter/beginningapdevwithflutter/Clima/utilities/constants.dart';

void main() async {
  // //initialize HIVE
  //await Hive.initFlutter();

  // //open box
  // var box = await Hive.openBox('myBox');

  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator2',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF0A0E21),
        ),
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
      home: LocationScreen(),
    );
  }
}

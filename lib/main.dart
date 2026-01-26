import 'package:learnflutter/beginningapdevwithflutter/DiceApp/app1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DiceApp());
}

class DiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'DiceApp',
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.red,
        ),
        body: DiceApp1(),
      ),
    );
  }
}

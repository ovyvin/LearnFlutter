import 'package:learnflutter/beginningapdevwithflutter/PokeApp/pokequiz.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:flutter/material.dart';
import 'package:learnflutter/beginningapdevwithflutter/PokeApp/pokeQuestionLib.dart';

void main() {
  runApp(PokeApp());
}

class PokeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Poke Quiz',
            textAlign: TextAlign.center,
            style: TextStyle(
              //fontWeight: FontWeight.bold,
              fontFamily: 'Pokemon',
              color: Color(0xffb42920),
            ),
          ),
          backgroundColor: Colors.orange,
        ),
        body: PokeQuiz(),
      ),
    );
  }
}

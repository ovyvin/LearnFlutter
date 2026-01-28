import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:math';

class Magic8App extends StatefulWidget {
  @override
  _Magic8AppState createState() => _Magic8AppState();
}

class _Magic8AppState extends State<Magic8App> {
  int number = 1;
  void NumberGuess() {
    setState(() {
      number = Random().nextInt(5) + 1;
      print('$number');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                NumberGuess();
              },
              child: Image.asset('/assets/images/ball$number.png'),
            ),
          ),
        ],
      ),
    );
  }
}

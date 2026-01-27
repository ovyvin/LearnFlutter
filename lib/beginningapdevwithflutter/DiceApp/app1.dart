import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class DiceApp1 extends StatefulWidget {
  @override
  _DiceApp1State createState() => _DiceApp1State();
}

class _DiceApp1State extends State<DiceApp1> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void ChangeDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(5) + 1;
      rightDiceNumber = Random().nextInt(5) + 1;
      //leftDiceNumber = 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  ChangeDice();
                },
                child: Image.asset(
                  '/assets/images/dice$leftDiceNumber.png',
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  ChangeDice();
                },
                child: Image.asset('/assets/images/dice$rightDiceNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

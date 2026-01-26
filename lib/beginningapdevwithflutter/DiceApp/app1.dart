import 'dart:html';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DiceApp1 extends StatefulWidget {
  @override
  _DiceApp1State createState() => _DiceApp1State();
}

class _DiceApp1State extends State<DiceApp1> {
  @override
  Widget build(BuildContext context) {
    var leftDiceNumber = 2;
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {},
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
                onPressed: () {},
                child: Image.asset('/assets/images/dice2.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

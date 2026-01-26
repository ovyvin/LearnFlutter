import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DiceApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                '/assets/images/dice1.png',
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset('/assets/images/dice2.png'),
            ),
          ),
        ],
      ),
    );
  }
}

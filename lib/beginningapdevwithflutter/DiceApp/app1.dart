import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DiceApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Image.asset(
            '/assets/images/dice1.png',
          ),
        ),
        Expanded(
          child: Image.asset('/assets/images/dice2.png'),
        ),
      ],
    );
  }
}

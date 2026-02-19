import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  String text = '';
  VoidCallback? onPressed;
  MyButton({super.key, this.text = '', this.onPressed});

  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Text(text),
      color: Colors.yellow[600],
    );
  }
}

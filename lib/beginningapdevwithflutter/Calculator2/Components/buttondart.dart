import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final Function()? onPressed;
  final Widget? child;
  final Color? colour;

  RoundIconButton({this.onPressed, this.child, this.colour});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: child,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}

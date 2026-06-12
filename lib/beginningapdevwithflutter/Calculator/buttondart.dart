import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final Widget? child;
  RoundIconButton({this.child});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {},
      child: child,
      elevation: 6,
      disabledElevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}

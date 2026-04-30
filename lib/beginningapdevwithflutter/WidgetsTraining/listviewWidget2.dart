import 'package:flutter/material.dart';
import 'package:learnflutter/beginningapdevwithflutter/WidgetsTraining/listviewWidget.dart';

class ListviewWidget2 extends StatelessWidget {
  final String cText;
  ListviewWidget2({required this.cText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.green,
        ),
        child: Text(
          cText,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

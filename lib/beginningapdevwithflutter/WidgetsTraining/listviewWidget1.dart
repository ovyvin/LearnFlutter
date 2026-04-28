import 'package:flutter/material.dart';
import 'package:learnflutter/beginningapdevwithflutter/WidgetsTraining/listviewWidget.dart';

class UselistviewWidget extends StatelessWidget {
  final String ftext;
  UselistviewWidget({required this.ftext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150,
        color: Colors.amber,
        child: Text(ftext),
      ),
    );
  }
}

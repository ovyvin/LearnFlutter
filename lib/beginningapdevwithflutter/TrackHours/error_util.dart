import 'package:flutter/material.dart';
import 'package:learnflutter/beginningapdevwithflutter/TrackHours/mybutton_util.dart';

class ShowError extends StatelessWidget {
  String textValue;
  VoidCallback? onCancel;
  ShowError({required this.textValue, required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.red[300],
      content: Container(
        height: 100,
        child: Column(
          children: [
            Text(textValue),
            MyButton(
              text: 'Cancel',
              onPressed: onCancel,
            ),
          ],
        ),
      ),
    );
  }
}

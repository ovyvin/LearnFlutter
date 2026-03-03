import 'package:flutter/material.dart';
import 'package:learnflutter/beginningapdevwithflutter/todoapp2/mybutton.dart';

class DialogBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 120,
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Add a new task',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

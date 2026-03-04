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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyButton(text: 'Save', onPressed: () {}),
                  SizedBox(width: 5.0),
                  MyButton(text: 'Cancel', onPressed: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

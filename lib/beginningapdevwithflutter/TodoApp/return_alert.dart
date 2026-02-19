import 'package:flutter/material.dart';
import 'package:learnflutter/beginningapdevwithflutter/TodoApp/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onClose;
  DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onClose});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //get user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Add a new task!',
              ),
            ),

            //buttons for input and close
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //save button
                MyButton(
                  text: 'Save',
                  onPressed: onSave,
                ),
                //add space between buttons with SizedBox
                SizedBox(
                  width: 5.0,
                ),
                //cancel button
                MyButton(
                  text: 'Close',
                  onPressed: onClose,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

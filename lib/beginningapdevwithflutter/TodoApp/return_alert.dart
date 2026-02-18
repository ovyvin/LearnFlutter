import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 120,
        child: Column(
          children: [
            //get user input
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Add a new task!',
              ),
            ),

            //buttons for input and close
            Row(
              children: [
                //save button

                //cancel button
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  String taskName = 'First';
  bool taskCompleted = false;
  Function(bool?)? onChanged;

  ToDoTile(
      {super.key,
      this.taskName = '',
      this.taskCompleted = false,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 15.0),
      child: Container(
        padding: EdgeInsets.all(24.0),
        child: Row(
          children: [
            //checkbox
            Checkbox(value: taskCompleted, onChanged: onChanged),

            //text
            Text(taskName),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    );
  }
}

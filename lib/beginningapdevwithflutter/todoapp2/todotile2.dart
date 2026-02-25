import 'package:flutter/material.dart';

class ToDoTile2 extends StatelessWidget {
  String taskValue = '';
  bool checkBoxStatus = false;
  Function(bool?)? onChanged;
  ToDoTile2(
      {super.key,
      this.taskValue = '',
      this.checkBoxStatus = false,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          children: [
            Checkbox(value: checkBoxStatus, onChanged: onChanged),
            Text(taskValue),
          ],
        ),
      ),
    );
  }
}

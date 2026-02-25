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
    return Container(
      child: Row(
        children: [
          Checkbox(value: checkBoxStatus, onChanged: onChanged),
          Text(taskValue),
        ],
      ),
    );
  }
}

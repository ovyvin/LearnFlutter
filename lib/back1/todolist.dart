import 'package:flutter/material.dart';

class ToDolist extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

  ToDolist({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Container(
        child: Row(
          children: [
            Checkbox(value: taskCompleted, onChanged: onChanged),
            Text(taskName),
          ],
        ),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.yellow[800],
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
